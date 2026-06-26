.class final Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;
.super Ljava/lang/Object;
.source "TopicSubscribeView.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;->sendSubscribeRequest(Lcom/narvii/model/story/StoryTopic;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/util/RequestResult;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setNotifying(Z)V

    .line 93
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$sendSubscribeRequest$1;->call(Lcom/narvii/util/RequestResult;)V

    return-void
.end method
