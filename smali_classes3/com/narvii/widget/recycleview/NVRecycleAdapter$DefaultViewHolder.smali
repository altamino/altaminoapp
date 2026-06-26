.class public Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NVRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultViewHolder"
.end annotation


# instance fields
.field public tag:Lcom/narvii/util/Tag;

.field final synthetic this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 508
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 509
    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;->tag:Lcom/narvii/util/Tag;

    return-void
.end method
