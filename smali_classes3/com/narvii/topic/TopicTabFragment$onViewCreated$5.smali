.class public final Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmark(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;->this$0:Lcom/narvii/topic/TopicTabFragment;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/narvii/logging/ActSemantic;->bookmark:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->unbookmark:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "BookmarkIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v0}, Lcom/narvii/topic/TopicTabFragment;->getTopicId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v0}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
