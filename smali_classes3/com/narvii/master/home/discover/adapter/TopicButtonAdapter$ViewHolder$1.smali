.class final Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "TopicButtonAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 66
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    iget-object v0, v0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
