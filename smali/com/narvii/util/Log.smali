.class public Lcom/narvii/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


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

    .line 14
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    sput-boolean v0, Lcom/narvii/util/Log;->V:Z

    .line 15
    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    sput-boolean v0, Lcom/narvii/util/Log;->D:Z

    .line 16
    sget-boolean v0, Lcom/narvii/util/Log;->D:Z

    sput-boolean v0, Lcom/narvii/util/Log;->I:Z

    .line 17
    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    sput-boolean v0, Lcom/narvii/util/Log;->W:Z

    .line 18
    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    sput-boolean v0, Lcom/narvii/util/Log;->E:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustEnd(Ljava/lang/String;II)I
    .locals 3

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    return p2

    .line 238
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public static bp(Ljava/lang/Object;)Z
    .locals 1

    .line 209
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "breakpoint"

    invoke-static {v0, p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5

    .line 52
    sget-boolean v0, Lcom/narvii/util/Log;->D:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 56
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 43
    sget-boolean v0, Lcom/narvii/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 47
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 5

    .line 182
    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 183
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 186
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 153
    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 157
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 139
    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 143
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 168
    sget-boolean v0, Lcom/narvii/util/Log;->E:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 169
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 172
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 5

    .line 88
    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 92
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 70
    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 74
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 61
    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 65
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 79
    sget-boolean v0, Lcom/narvii/util/Log;->I:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v1, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 83
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static msgException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 6

    .line 191
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 194
    const-class v1, Lcom/narvii/util/Log;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 p0, 0x8

    .line 196
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, p0, :cond_1

    .line 197
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 198
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/2addr v4, v3

    .line 199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, v4, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/StackTraceElement;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, p0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_2
    return-object v0
.end method

.method static printChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-gt v0, v1, :cond_0

    .line 215
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Log;->printChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit16 v2, v1, 0x800

    .line 223
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/narvii/util/Log;->adjustEnd(Ljava/lang/String;II)I

    move-result v2

    .line 224
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/narvii/util/Log;->printChunk(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 5

    .line 34
    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 38
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 25
    sget-boolean v0, Lcom/narvii/util/Log;->V:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 29
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 5

    .line 124
    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 128
    invoke-interface {v2, v3, v1, p0, v4}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 106
    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 110
    invoke-interface {v1, v2, p0, p1, v3}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 97
    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 101
    invoke-interface {v1, v2, p0, p1, p2}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 115
    sget-boolean v0, Lcom/narvii/util/Log;->W:Z

    const-string v1, "narvii"

    if-eqz v0, :cond_0

    .line 116
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_0
    sget-object v0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

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

    .line 119
    invoke-interface {v2, v3, v1, p0, p1}, Lcom/narvii/util/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
