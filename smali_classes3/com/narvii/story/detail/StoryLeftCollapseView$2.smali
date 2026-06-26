.class Lcom/narvii/story/detail/StoryLeftCollapseView$2;
.super Ljava/lang/Object;
.source "StoryLeftCollapseView.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/detail/StoryLeftCollapseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$2;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$2;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$000(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "StoryInfo"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
