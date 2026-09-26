.class Lg2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/k$a;
    }
.end annotation


# static fields
.field private static final BACKEND_KEY_PREFIX:Ljava/lang/String; = "backend:"

.field private static final TAG:Ljava/lang/String; = "BackendRegistry"


# instance fields
.field private final backendFactoryProvider:Lg2/k$a;

.field private final backends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg2/m;",
            ">;"
        }
    .end annotation
.end field

.field private final creationContextFactory:Lg2/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lg2/i;)V
    .locals 1

    .line 1
    new-instance v0, Lg2/k$a;

    invoke-direct {v0, p1}, Lg2/k$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lg2/k;-><init>(Lg2/k$a;Lg2/i;)V

    return-void
.end method

.method constructor <init>(Lg2/k$a;Lg2/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg2/k;->backends:Ljava/util/Map;

    iput-object p1, p0, Lg2/k;->backendFactoryProvider:Lg2/k$a;

    iput-object p2, p0, Lg2/k;->creationContextFactory:Lg2/i;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lg2/m;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lg2/k;->backends:Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lg2/k;->backends:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lg2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg2/k;->backendFactoryProvider:Lg2/k$a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lg2/k$a;->b(Ljava/lang/String;)Lg2/d;

    .line 27
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    monitor-exit p0

    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_1
    :try_start_2
    iget-object v1, p0, Lg2/k;->creationContextFactory:Lg2/i;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lg2/i;->a(Ljava/lang/String;)Lg2/h;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lg2/d;->create(Lg2/h;)Lg2/m;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v1, p0, Lg2/k;->backends:Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return-object v0

    .line 50
    :goto_0
    monitor-exit p0

    .line 51
    throw p1
.end method
