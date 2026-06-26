.class final Lcom/narvii/topic/TopicTabFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$3;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$3;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V

    return-void
.end method
