.class public Lcom/narvii/feed/vote/VoterListResponse;
.super Lcom/narvii/model/api/UserListResponse;
.source "VoterListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/vote/VoterListResponse$VotedValueMapDeserializer;
    }
.end annotation


# instance fields
.field public votedValueMap:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/feed/vote/VoterListResponse$VotedValueMapDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/model/api/UserListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser(I)Lcom/narvii/model/User;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVotedValue(Lcom/narvii/model/User;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/vote/VoterListResponse;->getVotedValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getVotedValue(Ljava/lang/String;)I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListResponse;->votedValueMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method
