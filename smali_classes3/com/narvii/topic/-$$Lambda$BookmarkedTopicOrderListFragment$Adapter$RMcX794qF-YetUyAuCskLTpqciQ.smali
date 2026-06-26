.class public final synthetic Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

.field private final synthetic f$1:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;->f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;->f$1:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;->f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;->f$1:Lcom/narvii/model/story/StoryTopic;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->lambda$sendDeleteRequest$0$BookmarkedTopicOrderListFragment$Adapter(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
