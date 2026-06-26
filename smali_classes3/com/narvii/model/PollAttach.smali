.class public Lcom/narvii/model/PollAttach;
.super Ljava/lang/Object;
.source "PollAttach.java"


# instance fields
.field public attachId:Ljava/lang/String;

.field public isModified:Z

.field public polloptList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/PollOption;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/narvii/model/PollAttach;->isModified:Z

    return-void
.end method

.method public static isOptionListEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;)Z"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

    sget-object v1, Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;->INSTANCE:Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;

    invoke-virtual {v0, p0, p1, v1}, Lcom/narvii/util/KUtils$Companion;->isListSame(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 36
    const-class v2, Lcom/narvii/model/PollAttach;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 38
    :cond_1
    check-cast p1, Lcom/narvii/model/PollAttach;

    .line 40
    iget-object v2, p0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-static {v2, p1}, Lcom/narvii/model/PollAttach;->isOptionListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getAllVoteCount()I
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PollOption;

    if-nez v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget v3, v2, Lcom/narvii/model/PollOption;->votesCount:I

    iget v2, v2, Lcom/narvii/model/PollOption;->globalVotesCount:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v2, p0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
