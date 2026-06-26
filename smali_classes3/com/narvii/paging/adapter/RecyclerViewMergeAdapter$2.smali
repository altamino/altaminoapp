.class Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerViewMergeAdapter.java"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;->this$0:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    iget-object v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2$1;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
