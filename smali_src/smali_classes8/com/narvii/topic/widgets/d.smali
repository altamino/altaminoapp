.class public final synthetic Lcom/narvii/topic/widgets/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/widgets/TopicSubscribeView;

.field public final synthetic b:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/d;->a:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/d;->b:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/widgets/d;->a:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v1, p0, Lcom/narvii/topic/widgets/d;->b:Lcom/narvii/model/story/StoryTopic;

    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->b(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V

    return-void
.end method
