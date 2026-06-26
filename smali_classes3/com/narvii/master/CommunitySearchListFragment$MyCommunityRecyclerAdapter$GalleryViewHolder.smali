.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field iconImageView:Lcom/narvii/widget/NVImageView;

.field nameTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 347
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090b5b

    .line 348
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f090562

    .line 349
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method
