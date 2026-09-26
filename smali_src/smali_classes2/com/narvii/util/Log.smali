.class public Lcom/narvii/util/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final D:Z

.field static final DEFAULT_MAX_CHUNK_SIZE:I = 0x800

.field private static final E:Z

.field private static final I:Z

.field public static final TAG:Ljava/lang/String; = "narvii"

.field private static final V:Z

.field private static final W:Z

.field public static final loggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/log/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/narvii/util/Log;->V:Z

    .line 5
    .line 6
    sput-boolean v0, Lcom/narvii/util/Log;->D:Z

    .line 7
    .line 8
    sput-boolean v0, Lcom/narvii/util/Log;->I:Z

    .line 9
    .line 10
    sput-boolean v0, Lcom/narvii/util/Log;->W:Z

    .line 11
    .line 12
    sput-boolean v0, Lcom/narvii/util/Log;->E:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static adjustEnd(Ljava/lang/String;II)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    return p2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v0

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    return p2

    .line 17
    .line 18
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 19
    .line 20
    :goto_0
    if-ge p1, v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    return v0

    .line 30
    .line 31
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return p2
.end method

.method public static bp(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "breakpoint"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/Log;->D:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 6
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 12
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x6

    .line 3
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x6

    .line 9
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 12
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x4

    .line 3
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v1, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x4

    .line 9
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static msgException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Exception;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    const-class v1, Lcom/narvii/util/Log;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    const/16 p0, 0x8

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result p0

    .line 37
    const/4 v3, 0x1

    .line 38
    move v4, v3

    .line 39
    .line 40
    :goto_0
    if-ge v4, p0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    check-cast v5, Ljava/lang/StackTraceElement;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v5

    .line 55
    .line 56
    if-eqz v5, :cond_0

    .line 57
    add-int/2addr v4, v3

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    move-result p0

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v4, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 65
    move-result-object v2

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    move-result p0

    .line 74
    .line 75
    new-array p0, p0, [Ljava/lang/StackTraceElement;

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    check-cast p0, [Ljava/lang/StackTraceElement;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 85
    :cond_2
    return-object v0
.end method

.method static printChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x800

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Log;->printChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    add-int/lit16 v2, v1, 0x800

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v1, v2}, Lcom/narvii/util/Log;->adjustEnd(Ljava/lang/String;II)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1, v1}, Lcom/narvii/util/Log;->printChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 6
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 12
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/log/Logger;

    const/4 v2, 0x5

    .line 3
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/log/Logger;

    const/4 v3, 0x5

    .line 9
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
