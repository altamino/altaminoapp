.class final Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "AggregationTopicFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/picker/AggregationTopicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$1;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$1;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->onInterestSelected(Lcom/narvii/model/InterestData;)V

    return-void
.end method
