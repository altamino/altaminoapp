.class Lcom/narvii/list/NVRecyclerLayout$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "NVRecyclerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVRecyclerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVRecyclerLayout;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVRecyclerLayout;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$1;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout$1;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    invoke-static {v0}, Lcom/narvii/list/NVRecyclerLayout;->access$000(Lcom/narvii/list/NVRecyclerLayout;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$1;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    invoke-static {p1}, Lcom/narvii/list/NVRecyclerLayout;->access$000(Lcom/narvii/list/NVRecyclerLayout;)V

    return-void
.end method
