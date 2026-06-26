.class Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "NVHorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;->this$0:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
