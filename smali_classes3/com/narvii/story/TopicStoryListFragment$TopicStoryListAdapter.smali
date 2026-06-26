.class Lcom/narvii/story/TopicStoryListFragment$TopicStoryListAdapter;
.super Lcom/narvii/story/StoryListAdapter;
.source "TopicStoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/TopicStoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicStoryListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/TopicStoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 150
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopicStoryListAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    const-string v0, "topic-list"

    .line 151
    invoke-direct {p0, p2, p3, v0}, Lcom/narvii/story/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    if-nez p3, :cond_0

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "topic0problem : topic list type is 0 with topic-list : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected showCommentBarInDetailPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showSearchButtonInDetailPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
