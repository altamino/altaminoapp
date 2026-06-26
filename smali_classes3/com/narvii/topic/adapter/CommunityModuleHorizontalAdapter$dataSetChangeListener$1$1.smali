.class final Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1;
.super Ljava/lang/Object;
.source "CommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;->onDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;

    iget-object v0, v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 76
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;

    iget-object v0, v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1$1;->INSTANCE:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1$1$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
