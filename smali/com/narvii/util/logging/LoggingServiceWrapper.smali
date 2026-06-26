.class public Lcom/narvii/util/logging/LoggingServiceWrapper;
.super Ljava/lang/Object;
.source "LoggingServiceWrapper.java"

# interfaces
.implements Lcom/narvii/util/logging/LoggingService;


# instance fields
.field private final addList:[Ljava/lang/Object;

.field private final wrapped:Lcom/narvii/util/logging/LoggingService;


# direct methods
.method public varargs constructor <init>(Lcom/narvii/util/logging/LoggingService;[Ljava/lang/Object;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->wrapped:Lcom/narvii/util/logging/LoggingService;

    const/4 p1, 0x0

    .line 16
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 17
    aget-object v0, p2, p1

    add-int/lit8 v1, p1, 0x1

    .line 18
    aget-object v1, p2, v1

    .line 19
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported key "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iput-object p2, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 28
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    array-length v1, p2

    move v3, v1

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v4, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 32
    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 35
    :goto_1
    array-length v6, p2

    if-ge v5, v6, :cond_1

    .line 36
    aget-object v6, p2, v5

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 43
    iget-object v5, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    add-int/lit8 v6, v3, 0x1

    .line 44
    aput-object v4, v0, v3

    add-int/lit8 v3, v6, 0x1

    .line 45
    aput-object v5, v0, v6

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 48
    :cond_3
    array-length p2, v0

    if-eq p2, v3, :cond_4

    .line 49
    new-array p2, v3, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    move-object p2, v0

    .line 55
    :goto_3
    iget-object v0, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->wrapped:Lcom/narvii/util/logging/LoggingService;

    if-eqz v0, :cond_5

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
