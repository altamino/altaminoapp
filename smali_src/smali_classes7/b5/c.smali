.class public Lb5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/i;


# instance fields
.field private final gamesSDKRegistrar:Lb5/d;

.field private final javaSDKVersionUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Set;Lb5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lb5/f;",
            ">;",
            "Lb5/d;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lb5/c;->d(Ljava/util/Set;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lb5/c;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lb5/c;->gamesSDKRegistrar:Lb5/d;

    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/e;)Lb5/i;
    .locals 0

    .line 1
    invoke-static {p0}, Lb5/c;->c(Lcom/google/firebase/components/e;)Lb5/i;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/firebase/components/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/c<",
            "Lb5/i;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lb5/i;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lb5/f;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/components/s;->n(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lb5/b;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Lb5/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static synthetic c(Lcom/google/firebase/components/e;)Lb5/i;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lb5/c;

    .line 3
    .line 4
    const-class v1, Lb5/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/util/Set;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lb5/d;->a()Lb5/d;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lb5/c;-><init>(Ljava/util/Set;Lb5/d;)V

    .line 16
    return-object v0
.end method

.method private static d(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lb5/f;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lb5/f;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lb5/f;->b()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const/16 v2, 0x2f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lb5/f;->c()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const/16 v1, 0x20

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lb5/c;->gamesSDKRegistrar:Lb5/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lb5/d;->b()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lb5/c;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    iget-object v1, p0, Lb5/c;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const/16 v1, 0x20

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lb5/c;->gamesSDKRegistrar:Lb5/d;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lb5/d;->b()Ljava/util/Set;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lb5/c;->d(Ljava/util/Set;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
