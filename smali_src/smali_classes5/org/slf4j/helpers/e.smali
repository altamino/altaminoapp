.class public Lorg/slf4j/helpers/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/a;


# instance fields
.field private volatile _delegate:Lorg/slf4j/a;

.field private final createdPostInitialization:Z

.field private delegateEventAware:Ljava/lang/Boolean;

.field private eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/d;",
            ">;"
        }
    .end annotation
.end field

.field private eventRecodingLogger:Lorg/slf4j/event/a;

.field private logMethodCache:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/d;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/slf4j/helpers/e;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/slf4j/helpers/e;->eventQueue:Ljava/util/Queue;

    .line 8
    .line 9
    iput-boolean p3, p0, Lorg/slf4j/helpers/e;->createdPostInitialization:Z

    .line 10
    return-void
.end method

.method private d()Lorg/slf4j/a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/e;->eventRecodingLogger:Lorg/slf4j/event/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/slf4j/event/a;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/slf4j/helpers/e;->eventQueue:Ljava/util/Queue;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lorg/slf4j/event/a;-><init>(Lorg/slf4j/helpers/e;Ljava/util/Queue;)V

    .line 12
    .line 13
    iput-object v0, p0, Lorg/slf4j/helpers/e;->eventRecodingLogger:Lorg/slf4j/event/a;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/slf4j/helpers/e;->eventRecodingLogger:Lorg/slf4j/event/a;

    .line 16
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/e;->c()Lorg/slf4j/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/e;->c()Lorg/slf4j/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/slf4j/a;->b(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method c()Lorg/slf4j/a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/slf4j/helpers/e;->createdPostInitialization:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lorg/slf4j/helpers/b;->NOP_LOGGER:Lorg/slf4j/helpers/b;

    .line 14
    return-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lorg/slf4j/helpers/e;->d()Lorg/slf4j/a;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public e()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/e;->delegateEventAware:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "log"

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    new-array v2, v2, [Ljava/lang/Class;

    .line 21
    .line 22
    const-class v3, Lorg/slf4j/event/c;

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lorg/slf4j/helpers/e;->logMethodCache:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/slf4j/helpers/e;->delegateEventAware:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/slf4j/helpers/e;->delegateEventAware:Ljava/lang/Boolean;

    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lorg/slf4j/helpers/e;->delegateEventAware:Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result v0

    .line 47
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lorg/slf4j/helpers/e;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/slf4j/helpers/e;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lorg/slf4j/helpers/e;->name:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    return v1

    .line 32
    :cond_2
    return v0

    .line 33
    :cond_3
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    .line 3
    .line 4
    instance-of v0, v0, Lorg/slf4j/helpers/b;

    .line 5
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slf4j/helpers/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lorg/slf4j/event/c;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/e;->e()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/e;->logMethodCache:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object p1, v2, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/e;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(Lorg/slf4j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/helpers/e;->_delegate:Lorg/slf4j/a;

    return-void
.end method
