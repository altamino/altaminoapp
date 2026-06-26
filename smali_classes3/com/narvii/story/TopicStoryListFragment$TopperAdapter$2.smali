.class Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$2;
.super Ljava/lang/Object;
.source "TopicStoryListFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$2;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$2;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
