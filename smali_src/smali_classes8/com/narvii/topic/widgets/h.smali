.class public final synthetic Lcom/narvii/topic/widgets/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/widgets/TopicSubscribeView;

.field public final synthetic b:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/h;->a:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/h;->b:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/widgets/h;->a:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v1, p0, Lcom/narvii/topic/widgets/h;->b:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->a(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
