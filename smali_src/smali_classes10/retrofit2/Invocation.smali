.class public final Lretrofit2/Invocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static of(Ljava/lang/reflect/Method;Ljava/util/List;)Lretrofit2/Invocation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lretrofit2/Invocation;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "method == null"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "arguments == null"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Lretrofit2/Invocation;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lretrofit2/Invocation;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public arguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public method()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget-object v1, p0, Lretrofit2/Invocation;->method:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    aput-object v1, v0, v2

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    iget-object v2, p0, Lretrofit2/Invocation;->arguments:Ljava/util/List;

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    const-string v1, "%s.%s() %s"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
