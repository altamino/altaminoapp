.class public final Lcoil/fetch/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/k$b;,
        Lcoil/fetch/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUriFetcher.kt\ncoil/fetch/HttpUriFetcher\n+ 2 FileSystem.kt\nokio/FileSystem\n+ 3 Okio.kt\nokio/Okio__OkioKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n79#2:308\n160#2:309\n80#2:310\n81#2:316\n79#2:330\n160#2:331\n80#2:332\n81#2:338\n79#2:352\n160#2:353\n80#2:354\n81#2:360\n66#2:377\n67#2:383\n52#3,5:311\n57#3,13:317\n52#3,5:333\n57#3,13:339\n52#3,5:355\n57#3,13:361\n52#3,5:378\n57#3,13:384\n211#4,2:374\n1#5:376\n*S KotlinDebug\n*F\n+ 1 HttpUriFetcher.kt\ncoil/fetch/HttpUriFetcher\n*L\n161#1:308\n161#1:309\n161#1:310\n161#1:316\n166#1:330\n166#1:331\n166#1:332\n166#1:338\n169#1:352\n169#1:353\n169#1:354\n169#1:360\n254#1:377\n254#1:383\n161#1:311,5\n161#1:317,13\n166#1:333,5\n166#1:339,13\n169#1:355,5\n169#1:361,13\n254#1:378,5\n254#1:384,13\n189#1:374,2\n*E\n"
.end annotation


# static fields
.field private static final CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcoil/fetch/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIME_TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callFactory:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCache:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lcoil/disk/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/request/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final respectCacheHeaders:Z

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcoil/fetch/k$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcoil/fetch/k$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcoil/fetch/k;->Companion:Lcoil/fetch/k$a;

    .line 9
    .line 10
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sput-object v0, Lcoil/fetch/k;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 28
    .line 29
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcoil/fetch/k;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcoil/request/m;Lw7/m;Lw7/m;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lw7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lw7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcoil/request/m;",
            "Lw7/m<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "Lw7/m<",
            "+",
            "Lcoil/disk/a;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 8
    .line 9
    iput-object p3, p0, Lcoil/fetch/k;->callFactory:Lw7/m;

    .line 10
    .line 11
    iput-object p4, p0, Lcoil/fetch/k;->diskCache:Lw7/m;

    .line 12
    .line 13
    iput-boolean p5, p0, Lcoil/fetch/k;->respectCacheHeaders:Z

    .line 14
    return-void
.end method

.method public static final synthetic b(Lcoil/fetch/k;Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcoil/fetch/k;->c(Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lcoil/fetch/k$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcoil/fetch/k$c;

    .line 8
    .line 9
    iget v1, v0, Lcoil/fetch/k$c;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcoil/fetch/k$c;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/fetch/k$c;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcoil/fetch/k$c;-><init>(Lcoil/fetch/k;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lcoil/fetch/k$c;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/fetch/k$c;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcoil/util/i;->t()Z

    .line 56
    move-result p2

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    iget-object p2, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcoil/request/m;->k()Lcoil/request/a;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcoil/request/a;->b()Z

    .line 68
    move-result p2

    .line 69
    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    iget-object p2, p0, Lcoil/fetch/k;->callFactory:Lw7/m;

    .line 73
    .line 74
    .line 75
    invoke-interface {p2}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    check-cast p2, Lokhttp3/Call$Factory;

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 86
    move-result-object p1

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 93
    throw p1

    .line 94
    .line 95
    :cond_4
    iget-object p2, p0, Lcoil/fetch/k;->callFactory:Lw7/m;

    .line 96
    .line 97
    .line 98
    invoke-interface {p2}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    check-cast p2, Lokhttp3/Call$Factory;

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iput v3, v0, Lcoil/fetch/k$c;->label:I

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v0}, Lcoil/util/b;->a(Lokhttp3/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    if-ne p2, v1, :cond_5

    .line 114
    return-object v1

    .line 115
    :cond_5
    :goto_1
    move-object p1, p2

    .line 116
    .line 117
    check-cast p1, Lokhttp3/Response;

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 121
    move-result p2

    .line 122
    .line 123
    if-nez p2, :cond_7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 127
    move-result p2

    .line 128
    .line 129
    const/16 v0, 0x130

    .line 130
    .line 131
    if-eq p2, v0, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    .line 140
    invoke-static {p2}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 141
    .line 142
    :cond_6
    new-instance p2, Lcoil/network/d;

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, p1}, Lcoil/network/d;-><init>(Lokhttp3/Response;)V

    .line 146
    throw p2

    .line 147
    :cond_7
    return-object p1
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/request/m;->h()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 11
    :cond_0
    return-object v0
.end method

.method private final e()Lokio/FileSystem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/k;->diskCache:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    check-cast v0, Lcoil/disk/a;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcoil/disk/a;->a()Lokio/FileSystem;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private final g(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/request/m;->i()Lcoil/request/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcoil/request/a;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcoil/fetch/k;->respectCacheHeaders:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcoil/network/b;->Companion:Lcoil/network/b$a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcoil/network/b$a;->c(Lokhttp3/Request;Lokhttp3/Response;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private final h()Lokhttp3/Request;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lokhttp3/Request$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcoil/request/m;->j()Lokhttp3/Headers;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcoil/request/m;->o()Lcoil/request/q;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcoil/request/q;->a()Ljava/util/Map;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    const-string/jumbo v4, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>"

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast v3, Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_0
    iget-object v1, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcoil/request/m;->i()Lcoil/request/a;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcoil/request/a;->b()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    iget-object v2, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcoil/request/m;->k()Lcoil/request/a;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcoil/request/a;->b()Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    sget-object v1, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_1
    if-eqz v2, :cond_3

    .line 104
    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    iget-object v1, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcoil/request/m;->i()Lcoil/request/a;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcoil/request/a;->c()Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_2
    sget-object v1, Lcoil/fetch/k;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_3
    if-nez v2, :cond_4

    .line 132
    .line 133
    if-nez v1, :cond_4

    .line 134
    .line 135
    sget-object v1, Lcoil/fetch/k;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method

.method private final i()Lcoil/disk/a$c;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/request/m;->i()Lcoil/request/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcoil/request/a;->b()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcoil/fetch/k;->diskCache:Lw7/m;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcoil/disk/a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcoil/fetch/k;->d()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcoil/disk/a;->get(Ljava/lang/String;)Lcoil/disk/a$c;

    .line 31
    move-result-object v1

    .line 32
    :cond_0
    return-object v1
.end method

.method private final j(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "response body == null"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method private final k(Lcoil/disk/a$c;)Lcoil/network/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcoil/disk/a$c;->getMetadata()Lokio/Path;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :try_start_1
    new-instance v1, Lcoil/network/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcoil/network/a;-><init>(Lokio/BufferedSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    move-object v2, v1

    .line 24
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    move-object v2, v0

    .line 28
    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    goto :goto_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    move-object v1, p1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_3
    invoke-static {v1, p1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 47
    return-object v2

    .line 48
    :cond_2
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :catch_0
    return-object v0
.end method

.method private final l(Lokhttp3/Response;)Lcoil/decode/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcoil/decode/f;->NETWORK:Lcoil/decode/f;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object p1, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 12
    :goto_0
    return-object p1
.end method

.method private final m(Lcoil/disk/a$c;)Lcoil/decode/p;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcoil/disk/a$c;->getData()Lokio/Path;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcoil/fetch/k;->d()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, p1}, Lcoil/decode/q;->c(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)Lcoil/decode/p;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final n(Lokhttp3/ResponseBody;)Lcoil/decode/p;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcoil/fetch/k;->options:Lcoil/request/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcoil/request/m;->g()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcoil/decode/q;->a(Lokio/BufferedSource;Landroid/content/Context;)Lcoil/decode/p;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final o(Lcoil/disk/a$c;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/a;)Lcoil/disk/a$c;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcoil/fetch/k;->g(Lokhttp3/Request;Lokhttp3/Response;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 13
    :cond_0
    return-object v0

    .line 14
    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcoil/disk/a$c;->N()Lcoil/disk/a$b;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_2
    iget-object p1, p0, Lcoil/fetch/k;->diskCache:Lw7/m;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcoil/disk/a;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcoil/fetch/k;->d()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Lcoil/disk/a;->b(Ljava/lang/String;)Lcoil/disk/a$b;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move-object p1, v0

    .line 41
    .line 42
    :goto_0
    if-nez p1, :cond_4

    .line 43
    return-object v0

    .line 44
    .line 45
    .line 46
    :cond_4
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    .line 47
    move-result p2

    .line 48
    .line 49
    const/16 v1, 0x130

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    if-ne p2, v1, :cond_8

    .line 53
    .line 54
    if-eqz p4, :cond_8

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    sget-object v1, Lcoil/network/b;->Companion:Lcoil/network/b$a;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Lcoil/network/a;->d()Lokhttp3/Headers;

    .line 64
    move-result-object p4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p4, v3}, Lcoil/network/b$a;->a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 72
    move-result-object p4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 84
    move-result-object p4

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lcoil/disk/a$b;->getMetadata()Lokio/Path;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, v1, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    .line 95
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 96
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 97
    .line 98
    :try_start_1
    new-instance v1, Lcoil/network/a;

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, p2}, Lcoil/network/a;-><init>(Lokhttp3/Response;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p4}, Lcoil/network/a;->g(Lokio/BufferedSink;)V

    .line 105
    .line 106
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p2

    .line 109
    move-object v4, v0

    .line 110
    move-object v0, p2

    .line 111
    move-object p2, v4

    .line 112
    .line 113
    :goto_1
    if-eqz p4, :cond_6

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    goto :goto_2

    .line 118
    :catchall_1
    move-exception p4

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    move-object v0, p4

    .line 122
    goto :goto_2

    .line 123
    .line 124
    .line 125
    :cond_5
    :try_start_3
    invoke-static {v0, p4}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 126
    goto :goto_2

    .line 127
    :catchall_2
    move-exception p1

    .line 128
    .line 129
    goto/16 :goto_9

    .line 130
    :catch_0
    move-exception p2

    .line 131
    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    :cond_7
    throw v0

    .line 141
    .line 142
    .line 143
    :cond_8
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Lcoil/disk/a$b;->getMetadata()Lokio/Path;

    .line 148
    move-result-object p4

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p4, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 156
    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    .line 158
    :try_start_4
    new-instance p4, Lcoil/network/a;

    .line 159
    .line 160
    .line 161
    invoke-direct {p4, p3}, Lcoil/network/a;-><init>(Lokhttp3/Response;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p4, p2}, Lcoil/network/a;->g(Lokio/BufferedSink;)V

    .line 165
    .line 166
    sget-object p4, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 167
    move-object v1, p4

    .line 168
    move-object p4, v0

    .line 169
    goto :goto_3

    .line 170
    :catchall_3
    move-exception p4

    .line 171
    move-object v1, v0

    .line 172
    .line 173
    :goto_3
    if-eqz p2, :cond_a

    .line 174
    .line 175
    .line 176
    :try_start_5
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 177
    goto :goto_4

    .line 178
    :catchall_4
    move-exception p2

    .line 179
    .line 180
    if-nez p4, :cond_9

    .line 181
    move-object p4, p2

    .line 182
    goto :goto_4

    .line 183
    .line 184
    .line 185
    :cond_9
    :try_start_6
    invoke-static {p4, p2}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    :cond_a
    :goto_4
    if-nez p4, :cond_e

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 194
    move-result-object p2

    .line 195
    .line 196
    .line 197
    invoke-interface {p1}, Lcoil/disk/a$b;->getData()Lokio/Path;

    .line 198
    move-result-object p4

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p4, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 202
    move-result-object p2

    .line 203
    .line 204
    .line 205
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 206
    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 207
    .line 208
    .line 209
    :try_start_7
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 210
    move-result-object p4

    .line 211
    .line 212
    .line 213
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 217
    move-result-object p4

    .line 218
    .line 219
    .line 220
    invoke-interface {p4, p2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 221
    move-result-wide v1

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    move-result-object p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 226
    goto :goto_5

    .line 227
    :catchall_5
    move-exception p4

    .line 228
    move-object v4, v0

    .line 229
    move-object v0, p4

    .line 230
    move-object p4, v4

    .line 231
    .line 232
    :goto_5
    if-eqz p2, :cond_c

    .line 233
    .line 234
    .line 235
    :try_start_8
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 236
    goto :goto_6

    .line 237
    :catchall_6
    move-exception p2

    .line 238
    .line 239
    if-nez v0, :cond_b

    .line 240
    move-object v0, p2

    .line 241
    goto :goto_6

    .line 242
    .line 243
    .line 244
    :cond_b
    :try_start_9
    invoke-static {v0, p2}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 245
    .line 246
    :cond_c
    :goto_6
    if-nez v0, :cond_d

    .line 247
    .line 248
    .line 249
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :goto_7
    invoke-interface {p1}, Lcoil/disk/a$b;->a()Lcoil/disk/a$c;

    .line 253
    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 254
    .line 255
    .line 256
    invoke-static {p3}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 257
    return-object p1

    .line 258
    :cond_d
    :try_start_a
    throw v0

    .line 259
    :cond_e
    throw p4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 260
    .line 261
    .line 262
    :goto_8
    :try_start_b
    invoke-static {p1}, Lcoil/util/i;->a(Lcoil/disk/a$b;)V

    .line 263
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 264
    .line 265
    .line 266
    :goto_9
    invoke-static {p3}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 267
    throw p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcoil/fetch/k$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcoil/fetch/k$d;

    .line 8
    .line 9
    iget v1, v0, Lcoil/fetch/k$d;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcoil/fetch/k$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/fetch/k$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcoil/fetch/k$d;-><init>(Lcoil/fetch/k;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcoil/fetch/k$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/fetch/k$d;->label:I

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-eq v2, v6, :cond_2

    .line 42
    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Lcoil/fetch/k$d;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lokhttp3/Response;

    .line 48
    .line 49
    iget-object v2, v0, Lcoil/fetch/k$d;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lcoil/disk/a$c;

    .line 52
    .line 53
    iget-object v0, v0, Lcoil/fetch/k$d;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcoil/fetch/k;

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    :catch_0
    move-exception p1

    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    .line 73
    :cond_2
    iget-object v2, v0, Lcoil/fetch/k$d;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lcoil/network/b;

    .line 76
    .line 77
    iget-object v6, v0, Lcoil/fetch/k$d;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lcoil/disk/a$c;

    .line 80
    .line 81
    iget-object v8, v0, Lcoil/fetch/k$d;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v8, Lcoil/fetch/k;

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    move-object v11, v6

    .line 88
    move-object v6, v2

    .line 89
    move-object v2, v11

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    :catch_1
    move-exception p1

    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcoil/fetch/k;->i()Lcoil/disk/a$c;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-direct {p0}, Lcoil/fetch/k;->e()Lokio/FileSystem;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Lcoil/disk/a$c;->getMetadata()Lokio/Path;

    .line 111
    move-result-object v8

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v8}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    if-nez v2, :cond_4

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 126
    move-result-wide v8

    .line 127
    .line 128
    cmp-long v2, v8, v3

    .line 129
    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    new-instance v0, Lcoil/fetch/m;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcoil/fetch/k;->m(Lcoil/disk/a$c;)Lcoil/decode/p;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    iget-object v2, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v2, v7}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    sget-object v3, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 148
    return-object v0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    move-object v6, p1

    .line 151
    move-object p1, v0

    .line 152
    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcoil/fetch/k;->respectCacheHeaders:Z

    .line 156
    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    new-instance v2, Lcoil/network/b$b;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcoil/fetch/k;->h()Lokhttp3/Request;

    .line 163
    move-result-object v8

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcoil/fetch/k;->k(Lcoil/disk/a$c;)Lcoil/network/a;

    .line 167
    move-result-object v9

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v8, v9}, Lcoil/network/b$b;-><init>(Lokhttp3/Request;Lcoil/network/a;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcoil/network/b$b;->b()Lcoil/network/b;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Lcoil/network/b;->b()Lokhttp3/Request;

    .line 178
    move-result-object v8

    .line 179
    .line 180
    if-nez v8, :cond_9

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lcoil/network/b;->a()Lcoil/network/a;

    .line 184
    move-result-object v8

    .line 185
    .line 186
    if-eqz v8, :cond_9

    .line 187
    .line 188
    new-instance v0, Lcoil/fetch/m;

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, p1}, Lcoil/fetch/k;->m(Lcoil/disk/a$c;)Lcoil/decode/p;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    iget-object v3, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcoil/network/b;->a()Lcoil/network/a;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcoil/network/a;->b()Lokhttp3/MediaType;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v3, v2}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    sget-object v3, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 212
    return-object v0

    .line 213
    .line 214
    :cond_6
    new-instance v0, Lcoil/fetch/m;

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1}, Lcoil/fetch/k;->m(Lcoil/disk/a$c;)Lcoil/decode/p;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    iget-object v2, p0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, p1}, Lcoil/fetch/k;->k(Lcoil/disk/a$c;)Lcoil/network/a;

    .line 224
    move-result-object v3

    .line 225
    .line 226
    if-eqz v3, :cond_7

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Lcoil/network/a;->b()Lokhttp3/MediaType;

    .line 230
    move-result-object v7

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {p0, v2, v7}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    sget-object v3, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 237
    .line 238
    .line 239
    invoke-direct {v0, v1, v2, v3}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 240
    return-object v0

    .line 241
    .line 242
    :cond_8
    new-instance v2, Lcoil/network/b$b;

    .line 243
    .line 244
    .line 245
    invoke-direct {p0}, Lcoil/fetch/k;->h()Lokhttp3/Request;

    .line 246
    move-result-object v8

    .line 247
    .line 248
    .line 249
    invoke-direct {v2, v8, v7}, Lcoil/network/b$b;-><init>(Lokhttp3/Request;Lcoil/network/a;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Lcoil/network/b$b;->b()Lcoil/network/b;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-virtual {v2}, Lcoil/network/b;->b()Lokhttp3/Request;

    .line 257
    move-result-object v8

    .line 258
    .line 259
    .line 260
    invoke-static {v8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 261
    .line 262
    iput-object p0, v0, Lcoil/fetch/k$d;->L$0:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object p1, v0, Lcoil/fetch/k$d;->L$1:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v2, v0, Lcoil/fetch/k$d;->L$2:Ljava/lang/Object;

    .line 267
    .line 268
    iput v6, v0, Lcoil/fetch/k$d;->label:I

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, v8, v0}, Lcoil/fetch/k;->c(Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 272
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    .line 274
    if-ne v6, v1, :cond_a

    .line 275
    return-object v1

    .line 276
    :cond_a
    move-object v8, p0

    .line 277
    move-object v11, v2

    .line 278
    move-object v2, p1

    .line 279
    move-object p1, v6

    .line 280
    move-object v6, v11

    .line 281
    .line 282
    :goto_2
    :try_start_3
    check-cast p1, Lokhttp3/Response;

    .line 283
    .line 284
    .line 285
    invoke-direct {v8, p1}, Lcoil/fetch/k;->j(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 286
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 287
    .line 288
    .line 289
    :try_start_4
    invoke-virtual {v6}, Lcoil/network/b;->b()Lokhttp3/Request;

    .line 290
    move-result-object v10

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Lcoil/network/b;->a()Lcoil/network/a;

    .line 294
    move-result-object v6

    .line 295
    .line 296
    .line 297
    invoke-direct {v8, v2, v10, p1, v6}, Lcoil/fetch/k;->o(Lcoil/disk/a$c;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/a;)Lcoil/disk/a$c;

    .line 298
    move-result-object v2

    .line 299
    .line 300
    if-eqz v2, :cond_c

    .line 301
    .line 302
    new-instance v0, Lcoil/fetch/m;

    .line 303
    .line 304
    .line 305
    invoke-direct {v8, v2}, Lcoil/fetch/k;->m(Lcoil/disk/a$c;)Lcoil/decode/p;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    iget-object v3, v8, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    invoke-direct {v8, v2}, Lcoil/fetch/k;->k(Lcoil/disk/a$c;)Lcoil/network/a;

    .line 312
    move-result-object v4

    .line 313
    .line 314
    if-eqz v4, :cond_b

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Lcoil/network/a;->b()Lokhttp3/MediaType;

    .line 318
    move-result-object v7

    .line 319
    goto :goto_3

    .line 320
    :catch_3
    move-exception v0

    .line 321
    move-object v1, p1

    .line 322
    move-object p1, v0

    .line 323
    goto :goto_5

    .line 324
    .line 325
    .line 326
    :cond_b
    :goto_3
    invoke-virtual {v8, v3, v7}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 327
    move-result-object v3

    .line 328
    .line 329
    sget-object v4, Lcoil/decode/f;->NETWORK:Lcoil/decode/f;

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v1, v3, v4}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 333
    return-object v0

    .line 334
    .line 335
    .line 336
    :cond_c
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    .line 337
    move-result-wide v6

    .line 338
    .line 339
    cmp-long v3, v6, v3

    .line 340
    .line 341
    if-lez v3, :cond_d

    .line 342
    .line 343
    new-instance v0, Lcoil/fetch/m;

    .line 344
    .line 345
    .line 346
    invoke-direct {v8, v9}, Lcoil/fetch/k;->n(Lokhttp3/ResponseBody;)Lcoil/decode/p;

    .line 347
    move-result-object v1

    .line 348
    .line 349
    iget-object v3, v8, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 353
    move-result-object v4

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8, v3, v4}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 358
    .line 359
    .line 360
    invoke-direct {v8, p1}, Lcoil/fetch/k;->l(Lokhttp3/Response;)Lcoil/decode/f;

    .line 361
    move-result-object v4

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v1, v3, v4}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 365
    return-object v0

    .line 366
    .line 367
    .line 368
    :cond_d
    invoke-static {p1}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v8}, Lcoil/fetch/k;->h()Lokhttp3/Request;

    .line 372
    move-result-object v3

    .line 373
    .line 374
    iput-object v8, v0, Lcoil/fetch/k$d;->L$0:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v2, v0, Lcoil/fetch/k$d;->L$1:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object p1, v0, Lcoil/fetch/k$d;->L$2:Ljava/lang/Object;

    .line 379
    .line 380
    iput v5, v0, Lcoil/fetch/k$d;->label:I

    .line 381
    .line 382
    .line 383
    invoke-direct {v8, v3, v0}, Lcoil/fetch/k;->c(Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 384
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 385
    .line 386
    if-ne v0, v1, :cond_e

    .line 387
    return-object v1

    .line 388
    :cond_e
    move-object v1, p1

    .line 389
    move-object p1, v0

    .line 390
    move-object v0, v8

    .line 391
    .line 392
    :goto_4
    :try_start_5
    check-cast p1, Lokhttp3/Response;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 393
    .line 394
    .line 395
    :try_start_6
    invoke-direct {v0, p1}, Lcoil/fetch/k;->j(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 396
    move-result-object v1

    .line 397
    .line 398
    new-instance v3, Lcoil/fetch/m;

    .line 399
    .line 400
    .line 401
    invoke-direct {v0, v1}, Lcoil/fetch/k;->n(Lokhttp3/ResponseBody;)Lcoil/decode/p;

    .line 402
    move-result-object v4

    .line 403
    .line 404
    iget-object v5, v0, Lcoil/fetch/k;->url:Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 408
    move-result-object v1

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v5, v1}, Lcoil/fetch/k;->f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    .line 415
    invoke-direct {v0, p1}, Lcoil/fetch/k;->l(Lokhttp3/Response;)Lcoil/decode/f;

    .line 416
    move-result-object v0

    .line 417
    .line 418
    .line 419
    invoke-direct {v3, v4, v1, v0}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 420
    return-object v3

    .line 421
    .line 422
    .line 423
    :goto_5
    :try_start_7
    invoke-static {v1}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 424
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 425
    :catch_4
    move-exception p1

    .line 426
    move-object v6, v2

    .line 427
    .line 428
    :goto_6
    if-eqz v6, :cond_f

    .line 429
    .line 430
    .line 431
    invoke-static {v6}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 432
    :cond_f
    throw p1
.end method

.method public final f(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, v0

    .line 10
    :goto_0
    const/4 v1, 0x2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "text/plain"

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v2, v3, v1, v0}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Lcoil/util/i;->k(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_2
    if-eqz p2, :cond_3

    .line 36
    .line 37
    const/16 p1, 0x3b

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1, v0, v1, v0}, Lkotlin/text/k;->U0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    :cond_3
    return-object v0
.end method
