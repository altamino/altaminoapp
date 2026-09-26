.class public final Lio/ktor/client/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/ktor/client/engine/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1855#2,2:131\n1855#2,2:133\n*S KotlinDebug\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n*L\n104#1:131,2\n105#1:133,2\n*E\n"
.end annotation


# instance fields
.field private final customInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le8/l<",
            "Lio/ktor/client/a;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private developmentMode:Z

.field private engineConfig:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expectSuccess:Z

.field private followRedirects:Z

.field private final pluginConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/ktor/util/a<",
            "*>;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/ktor/util/a<",
            "*>;",
            "Le8/l<",
            "Lio/ktor/client/a;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useDefaultTransformers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lio/ktor/client/b;->customInterceptors:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lio/ktor/client/b$a;->INSTANCE:Lio/ktor/client/b$a;

    .line 27
    .line 28
    iput-object v0, p0, Lio/ktor/client/b;->engineConfig:Le8/l;

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    iput-boolean v0, p0, Lio/ktor/client/b;->followRedirects:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lio/ktor/client/b;->useDefaultTransformers:Z

    .line 34
    .line 35
    sget-object v0, Lio/ktor/util/r;->INSTANCE:Lio/ktor/util/r;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lio/ktor/util/r;->b()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    iput-boolean v0, p0, Lio/ktor/client/b;->developmentMode:Z

    .line 42
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/b;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget-object p2, Lio/ktor/client/b$b;->INSTANCE:Lio/ktor/client/b$b;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/b;->h(Lio/ktor/client/plugins/m;Le8/l;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/b;->developmentMode:Z

    return v0
.end method

.method public final c()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "TT;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/b;->engineConfig:Le8/l;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/b;->expectSuccess:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/b;->followRedirects:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/b;->useDefaultTransformers:Z

    return v0
.end method

.method public final g(Lio/ktor/client/a;)V
    .locals 2
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "client"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Le8/l;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lio/ktor/client/b;->customInterceptors:Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Le8/l;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public final h(Lio/ktor/client/plugins/m;Le8/l;)V
    .locals 4
    .param p1    # Lio/ktor/client/plugins/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBuilder:",
            "Ljava/lang/Object;",
            "TPlugin:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/plugins/m<",
            "+TTBuilder;TTPlugin;>;",
            "Le8/l<",
            "-TTBuilder;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "plugin"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "configure"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Le8/l;

    .line 23
    .line 24
    iget-object v1, p0, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    new-instance v3, Lio/ktor/client/b$c;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v0, p2}, Lio/ktor/client/b$c;-><init>(Le8/l;Le8/l;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p2, p0, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    return-void

    .line 50
    .line 51
    :cond_0
    iget-object p2, p0, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    new-instance v1, Lio/ktor/client/b$d;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p1}, Lio/ktor/client/b$d;-><init>(Lio/ktor/client/plugins/m;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final i(Ljava/lang/String;Le8/l;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/l<",
            "-",
            "Lio/ktor/client/a;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/client/b;->customInterceptors:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public final k(Lio/ktor/client/b;)V
    .locals 2
    .param p1    # Lio/ktor/client/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p1, Lio/ktor/client/b;->followRedirects:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/ktor/client/b;->followRedirects:Z

    .line 10
    .line 11
    iget-boolean v0, p1, Lio/ktor/client/b;->useDefaultTransformers:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/ktor/client/b;->useDefaultTransformers:Z

    .line 14
    .line 15
    iget-boolean v0, p1, Lio/ktor/client/b;->expectSuccess:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lio/ktor/client/b;->expectSuccess:Z

    .line 18
    .line 19
    iget-object v0, p0, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v1, p1, Lio/ktor/client/b;->plugins:Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    .line 26
    iget-object v0, p0, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v1, p1, Lio/ktor/client/b;->pluginConfigurations:Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 32
    .line 33
    iget-object v0, p0, Lio/ktor/client/b;->customInterceptors:Ljava/util/Map;

    .line 34
    .line 35
    iget-object p1, p1, Lio/ktor/client/b;->customInterceptors:Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 39
    return-void
.end method
