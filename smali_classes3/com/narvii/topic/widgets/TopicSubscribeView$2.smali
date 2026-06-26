.class final Lcom/narvii/topic/widgets/TopicSubscribeView$2;
.super Ljava/lang/Object;
.source "TopicSubscribeView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicSubscribeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicSubscribeView.kt\ncom/narvii/topic/widgets/TopicSubscribeView$2\n*L\n1#1,217:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->isNotifying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    :goto_1
    invoke-static {v1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "AlertIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 77
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$sendSubscribeRequest(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;I)V

    .line 78
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->hideToolTip()V

    :cond_3
    return-void
.end method
