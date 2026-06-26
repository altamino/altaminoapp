.class Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$2;
.super Ljava/lang/Object;
.source "NVRecyclerViewBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$2;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$2;->this$0:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
