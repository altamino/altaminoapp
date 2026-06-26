.class Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2$1;
.super Ljava/lang/Object;
.source "RecyclerViewMergeAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;->onDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2$1;->this$1:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 110
    invoke-interface {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2$1;->call(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method
