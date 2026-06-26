.class Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommunityPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field iconImageView:Lcom/narvii/widget/NVImageView;

.field launchImageView:Lcom/narvii/widget/PromotionalImageView;

.field nameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 624
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 625
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PromotionalImageView;

    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    const p1, 0x7f090b5b

    .line 626
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f090562

    .line 627
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method
