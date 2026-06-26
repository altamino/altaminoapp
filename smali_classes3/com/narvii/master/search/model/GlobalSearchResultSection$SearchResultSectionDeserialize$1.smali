.class Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "GlobalSearchResultSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/model/GlobalSearchResultSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/narvii/model/Community;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize$1;->this$0:Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
