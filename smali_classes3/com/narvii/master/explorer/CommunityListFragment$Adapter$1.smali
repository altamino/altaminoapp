.class Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;
.super Lcom/narvii/logging/Impression/LinearImpressionCollector;
.source "CommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/explorer/CommunityListFragment$Adapter;-><init>(Lcom/narvii/master/explorer/CommunityListFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/explorer/CommunityListFragment$Adapter;

.field final synthetic val$this$0:Lcom/narvii/master/explorer/CommunityListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/CommunityListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/master/explorer/CommunityListFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/explorer/CommunityListFragment$Adapter;

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;->val$this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 144
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 145
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/explorer/CommunityListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "collectionId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
