.class public final Lcom/narvii/chat/core/ThreadCheckInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alertOption:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastReadTime:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestActivityTime:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threadId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
            using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
            using = Lcom/narvii/util/JacksonUtils$DateSerializer;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
            using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
            using = Lcom/narvii/util/JacksonUtils$DateSerializer;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    iput-object p3, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    iput-object p4, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 3
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/chat/core/ThreadCheckInfo;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;->copy(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)Lcom/narvii/chat/core/ThreadCheckInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
            using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
            using = Lcom/narvii/util/JacksonUtils$DateSerializer;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
            using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
            using = Lcom/narvii/util/JacksonUtils$DateSerializer;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/narvii/chat/core/ThreadCheckInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    iget-object v1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAlertOption()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLastReadTime()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getLatestActivityTime()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getThreadId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public final hasUnreadMessage()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    if-eqz v2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 18
    move-result v1

    .line 19
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAlertOption(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    return-void
.end method

.method public final setLastReadTime(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    return-void
.end method

.method public final setLatestActivityTime(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    return-void
.end method

.method public final setThreadId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->latestActivityTime:Ljava/util/Date;

    iget-object v2, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->lastReadTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/narvii/chat/core/ThreadCheckInfo;->alertOption:Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThreadCheckInfo(threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latestActivityTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastReadTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alertOption="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
