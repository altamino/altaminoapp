.class public Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/master/explorer/CommunityCollection;",
        ">;"
    }
.end annotation


# instance fields
.field communityCollection:Lcom/narvii/master/explorer/CommunityCollection;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/explorer/CommunityCollection;
    .end annotation
.end field

.field public communityCollectionSections:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/explorer/CommunityCollection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation
.end field

.field public language:Ljava/lang/String;


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
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollectionSections:Ljava/util/List;

    return-object v0
.end method
