.class final Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2;->this$0:Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2;->this$0:Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;

    iget-object v0, v0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    return-void
.end method
