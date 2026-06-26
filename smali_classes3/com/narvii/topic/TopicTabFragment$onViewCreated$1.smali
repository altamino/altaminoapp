.class public final Lcom/narvii/topic/TopicTabFragment$onViewCreated$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TopicTabFragment.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 139
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    :cond_0
    return-void
.end method
