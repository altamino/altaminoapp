.class final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;
.super Ljava/lang/Object;
.source "TopicModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    :goto_0
    return-void
.end method
