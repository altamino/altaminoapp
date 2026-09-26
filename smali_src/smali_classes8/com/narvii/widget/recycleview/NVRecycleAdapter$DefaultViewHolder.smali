.class public Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;->this$0:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;->tag:Lcom/narvii/util/Tag;

    .line 8
    return-void
.end method
