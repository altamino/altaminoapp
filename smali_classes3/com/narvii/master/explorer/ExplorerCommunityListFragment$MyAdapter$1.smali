.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "ExplorerCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;Ljava/lang/Class;I)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    return-void
.end method

.method protected getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/model/Community;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "collectionId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
