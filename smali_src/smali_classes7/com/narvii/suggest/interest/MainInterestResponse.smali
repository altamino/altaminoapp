.class public Lcom/narvii/suggest/interest/MainInterestResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->pickedInterestList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->sections:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/suggest/interest/InterestSection;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v2, Lcom/narvii/suggest/interest/InterestSection;->interestList:Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/model/InterestData;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object v4, v3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    iput-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->pickedInterestList:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/model/InterestData;

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    iget-object v2, v2, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    check-cast v2, Lcom/narvii/model/InterestData;

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    iget-object v4, v2, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->selectedInterestCache:Ljava/util/LinkedHashMap;

    .line 114
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/suggest/interest/MainInterestResponse;->sections:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/suggest/interest/InterestSection;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v2, Lcom/narvii/suggest/interest/InterestSection;->interestList:Ljava/util/List;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v0
.end method
