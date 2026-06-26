.class final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1;
.super Ljava/lang/Object;
.source "TopicModuleHorizontalAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;->onDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;

    iget-object v0, v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;

    iget-object v0, v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1$1;->INSTANCE:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1$1$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
