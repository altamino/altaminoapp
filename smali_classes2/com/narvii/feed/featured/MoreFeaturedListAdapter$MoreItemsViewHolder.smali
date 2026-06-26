.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoreFeaturedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreItemsViewHolder"
.end annotation


# instance fields
.field moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 402
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09072c

    .line 403
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    return-void
.end method
