.class public Le5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/google/firebase/components/c;Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le5/b;->c(Ljava/lang/String;Lcom/google/firebase/components/c;Lcom/google/firebase/components/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;Lcom/google/firebase/components/c;Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Le5/c;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/components/c;->h()Lcom/google/firebase/components/h;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p2}, Lcom/google/firebase/components/h;->a(Lcom/google/firebase/components/e;)Ljava/lang/Object;

    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Le5/c;->a()V

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Le5/c;->a()V

    .line 20
    throw p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/google/firebase/components/c;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/firebase/components/c;->i()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    new-instance v3, Le5/a;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v2, v1}, Le5/a;-><init>(Ljava/lang/String;Lcom/google/firebase/components/c;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c;->t(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method
