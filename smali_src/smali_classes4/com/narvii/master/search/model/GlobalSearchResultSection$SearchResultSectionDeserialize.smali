.class public Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    const-string p2, "objectType"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    .line 3
    invoke-static {p1, v0, p2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result p2

    const-string v1, "objectSubType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v1

    const-string v2, "hitsTotal"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    const-string v2, "sectionType"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resultList"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    const-string v4, "communityInfoMapping"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    const-string v5, "userProfileMapping"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 10
    new-instance v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;

    invoke-direct {v5}, Lcom/narvii/master/search/model/GlobalSearchResultSection;-><init>()V

    iput p2, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->objectType:I

    iput v1, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->objectSubType:I

    iput-object v2, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->sectionType:Ljava/lang/String;

    iput v0, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->hitsTotal:I

    if-eqz v4, :cond_0

    .line 11
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v1, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;-><init>(Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;)V

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v1, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$2;

    invoke-direct {v1, p0}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$2;-><init>(Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;)V

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->userProfileMapping:Ljava/util/HashMap;

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 v1, 0x80

    if-eq p2, v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-class v1, Lcom/narvii/model/story/StoryTopic;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/narvii/model/Blog;

    :goto_0
    if-nez v1, :cond_4

    iput-object v0, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    if-ne p2, p1, :cond_6

    if-nez v3, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-class p1, Lcom/narvii/headlines/Headline;

    .line 14
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 16
    new-instance p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-direct {p2}, Lcom/narvii/headlines/HeadlineListResponse;-><init>()V

    iput-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    .line 17
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 19
    :cond_6
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p2

    if-nez v3, :cond_7

    const-string v0, ""

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v5, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    :cond_8
    :goto_3
    return-object v5
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/model/GlobalSearchResultSection;

    move-result-object p1

    return-object p1
.end method
