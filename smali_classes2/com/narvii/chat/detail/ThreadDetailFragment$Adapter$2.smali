.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 847
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "TopicList"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
