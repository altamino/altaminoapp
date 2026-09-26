.class public final Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBookmark(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->bookmark:Lcom/narvii/logging/ActSemantic;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->unbookmark:Lcom/narvii/logging/ActSemantic;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "BookmarkIcon"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/topic/TopicTabFragment;->getTopicId()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 49
    return-void
.end method
