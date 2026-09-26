.class public final synthetic Lcom/narvii/topic/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

.field public final synthetic b:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/d;->a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/topic/d;->b:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/d;->a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/topic/d;->b:Lcom/narvii/model/story/StoryTopic;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->m(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
