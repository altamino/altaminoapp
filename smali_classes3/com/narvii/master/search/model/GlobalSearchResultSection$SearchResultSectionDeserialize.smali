.class public Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "GlobalSearchResultSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/model/GlobalSearchResultSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResultSectionDeserialize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
        "Lcom/narvii/master/search/model/GlobalSearchResultSection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "objectType"

    aput-object v2, v0, v1

    const/4 v2, -0x1

    .line 58
    invoke-static {p1, v2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    new-array v3, p2, [Ljava/lang/String;

    const-string v4, "objectSubType"

    aput-object v4, v3, v1

    .line 59
    invoke-static {p1, v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v3

    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "hitsTotal"

    aput-object v5, v4, v1

    .line 60
    invoke-static {p1, v2, v4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v2

    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "sectionType"

    aput-object v5, v4, v1

    .line 61
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, p2, [Ljava/lang/String;

    const-string v6, "resultList"

    aput-object v6, v5, v1

    .line 62
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    new-array v6, p2, [Ljava/lang/String;

    const-string v7, "communityInfoMapping"

    aput-object v7, v6, v1

    .line 63
    invoke-static {p1, v6}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    new-array v7, p2, [Ljava/lang/String;

    const-string v8, "userProfileMapping"

    aput-object v8, v7, v1

    .line 64
    invoke-static {p1, v7}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 65
    new-instance v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    invoke-direct {v1}, Lcom/narvii/master/search/model/GlobalSearchResultSection;-><init>()V

    .line 66
    iput v0, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->objectType:I

    .line 67
    iput v3, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->objectSubType:I

    .line 68
    iput-object v4, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->sectionType:Ljava/lang/String;

    .line 69
    iput v2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->hitsTotal:I

    if-eqz v6, :cond_0

    .line 71
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v4, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;

    invoke-direct {v4, p0}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;-><init>(Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;)V

    invoke-virtual {v2, v6, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v4, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$2;

    invoke-direct {v4, p0}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$2;-><init>(Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;)V

    invoke-virtual {v2, p1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->userProfileMapping:Ljava/util/HashMap;

    :cond_1
    const/4 p1, 0x0

    if-eq v0, p2, :cond_3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_2

    move-object v2, p1

    goto :goto_0

    .line 81
    :cond_2
    const-class v2, Lcom/narvii/model/story/StoryTopic;

    goto :goto_0

    .line 84
    :cond_3
    const-class v2, Lcom/narvii/model/Blog;

    :goto_0
    if-nez v2, :cond_4

    .line 88
    iput-object p1, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    goto/16 :goto_4

    :cond_4
    if-ne v0, p2, :cond_6

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    if-nez v5, :cond_5

    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    :goto_1
    new-instance p2, Lcom/narvii/model/Blog$BlogDeserializer;

    invoke-direct {p2}, Lcom/narvii/model/Blog$BlogDeserializer;-><init>()V

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object p1

    .line 92
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 94
    iget-object p2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    if-ne v0, p2, :cond_8

    if-nez v5, :cond_7

    goto :goto_2

    .line 97
    :cond_7
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :goto_2
    const-class p2, Lcom/narvii/headlines/Headline;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 101
    new-instance p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-direct {p2}, Lcom/narvii/headlines/HeadlineListResponse;-><init>()V

    .line 102
    iput-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    .line 103
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 105
    iget-object p2, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 109
    :cond_8
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    const-class p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    .line 111
    sget-object p2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v5, :cond_9

    const-string v0, ""

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    :cond_a
    :goto_4
    return-object v1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/model/GlobalSearchResultSection;

    move-result-object p1

    return-object p1
.end method
