.class public Lorg/slf4j/event/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/event/c;


# instance fields
.field argArray:[Ljava/lang/Object;

.field level:Lorg/slf4j/event/b;

.field logger:Lorg/slf4j/helpers/e;

.field loggerName:Ljava/lang/String;

.field marker:Lorg/slf4j/c;

.field message:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field throwable:Ljava/lang/Throwable;

.field timeStamp:J


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


# virtual methods
.method public a()Lorg/slf4j/helpers/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/d;->logger:Lorg/slf4j/helpers/e;

    return-object v0
.end method

.method public b([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->argArray:[Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/slf4j/event/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->level:Lorg/slf4j/event/b;

    return-void
.end method

.method public d(Lorg/slf4j/helpers/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->logger:Lorg/slf4j/helpers/e;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public f(Lorg/slf4j/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->message:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->threadName:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/d;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/slf4j/event/d;->timeStamp:J

    return-void
.end method
