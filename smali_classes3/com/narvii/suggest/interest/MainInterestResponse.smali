.class public Lcom/narvii/suggest/interest/MainInterestResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "MainInterestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/InterestData;",
        ">;"
    }
.end annotation


# instance fields
.field public pickedInterestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/suggest/interest/InterestSection;",
            ">;"
        }
    .end annotation
.end field

.field private selectedInterestCache:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedInterest()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->pickedInterestList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/suggest/interest/InterestSection;

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, v2, Lcom/narvii/suggest/interest/InterestSection;->interestList:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/InterestData;

    if-eqz v3, :cond_2

    .line 52
    iget-object v4, v3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 53
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    .line 59
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->pickedInterestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/InterestData;

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, v2, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 61
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/InterestData;

    if-eqz v2, :cond_4

    .line 63
    iget-object v3, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->sections:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/suggest/interest/InterestSection;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, v2, Lcom/narvii/suggest/interest/InterestSection;->interestList:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
