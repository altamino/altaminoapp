.class public Lcom/narvii/util/logging/LoggingServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/logging/LoggingService;


# instance fields
.field private final addList:[Ljava/lang/Object;

.field private final wrapped:Lcom/narvii/util/logging/LoggingService;


# direct methods
.method public varargs constructor <init>(Lcom/narvii/util/logging/LoggingService;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->wrapped:Lcom/narvii/util/logging/LoggingService;

    .line 6
    const/4 p1, 0x0

    .line 7
    :goto_0
    array-length v0, p2

    .line 8
    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    aget-object v0, p2, p1

    .line 12
    .line 13
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    aget-object v1, p2, v1

    .line 16
    .line 17
    instance-of v1, v0, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "unsupported key "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    .line 48
    :cond_1
    iput-object p2, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    array-length v0, p2

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    .line 8
    array-length v1, v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    array-length v2, p2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    array-length v2, p2

    .line 18
    move v4, v3

    .line 19
    .line 20
    :goto_0
    iget-object v5, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    .line 21
    array-length v6, v5

    .line 22
    .line 23
    if-ge v4, v6, :cond_2

    .line 24
    .line 25
    aget-object v5, v5, v4

    .line 26
    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    move v6, v3

    .line 29
    :goto_1
    array-length v7, p2

    .line 30
    .line 31
    if-ge v6, v7, :cond_1

    .line 32
    .line 33
    aget-object v7, p2, v6

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v7

    .line 38
    .line 39
    if-eqz v7, :cond_0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v6, v6, 0x2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object v6, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->addList:[Ljava/lang/Object;

    .line 46
    .line 47
    add-int/lit8 v7, v4, 0x1

    .line 48
    .line 49
    aget-object v6, v6, v7

    .line 50
    .line 51
    add-int/lit8 v7, v2, 0x1

    .line 52
    .line 53
    aput-object v5, v1, v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x2

    .line 56
    .line 57
    aput-object v6, v1, v7

    .line 58
    .line 59
    :goto_2
    add-int/lit8 v4, v4, 0x2

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    if-eq v0, v2, :cond_3

    .line 63
    .line 64
    new-array p2, v2, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    move-object v1, p2

    .line 69
    .line 70
    :cond_3
    iget-object p2, p0, Lcom/narvii/util/logging/LoggingServiceWrapper;->wrapped:Lcom/narvii/util/logging/LoggingService;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_4
    return-void
.end method
