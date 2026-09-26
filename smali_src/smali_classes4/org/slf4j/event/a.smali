.class public Lorg/slf4j/event/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/a;


# static fields
.field static final RECORD_ALL_EVENTS:Z = true


# instance fields
.field eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/d;",
            ">;"
        }
    .end annotation
.end field

.field logger:Lorg/slf4j/helpers/e;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/e;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/helpers/e;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/slf4j/event/a;->logger:Lorg/slf4j/helpers/e;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/slf4j/helpers/e;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lorg/slf4j/event/a;->name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lorg/slf4j/event/a;->eventQueue:Ljava/util/Queue;

    .line 14
    return-void
.end method

.method private c(Lorg/slf4j/event/b;Lorg/slf4j/c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/slf4j/event/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/slf4j/event/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/slf4j/event/d;->j(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/slf4j/event/d;->c(Lorg/slf4j/event/b;)V

    .line 16
    .line 17
    iget-object p1, p0, Lorg/slf4j/event/a;->logger:Lorg/slf4j/helpers/e;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/slf4j/event/d;->d(Lorg/slf4j/helpers/e;)V

    .line 21
    .line 22
    iget-object p1, p0, Lorg/slf4j/event/a;->name:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/slf4j/event/d;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lorg/slf4j/event/d;->f(Lorg/slf4j/c;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Lorg/slf4j/event/d;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/slf4j/event/d;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p4}, Lorg/slf4j/event/d;->b([Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p5}, Lorg/slf4j/event/d;->i(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    iget-object p1, p0, Lorg/slf4j/event/a;->eventQueue:Ljava/util/Queue;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method private d(Lorg/slf4j/event/b;Lorg/slf4j/c;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/slf4j/event/a;->c(Lorg/slf4j/event/b;Lorg/slf4j/c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/slf4j/event/b;->TRACE:Lorg/slf4j/event/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/event/a;->d(Lorg/slf4j/event/b;Lorg/slf4j/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/slf4j/event/b;->WARN:Lorg/slf4j/event/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/event/a;->d(Lorg/slf4j/event/b;Lorg/slf4j/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slf4j/event/a;->name:Ljava/lang/String;

    return-object v0
.end method
