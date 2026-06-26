.class public Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommunityRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field public iconImageView:Lcom/narvii/widget/NVImageView;

.field public launchImageView:Lcom/narvii/widget/PromotionalImageView;

.field public nameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/community/CommunityRecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityRecycleAdapter;Landroid/view/View;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->this$0:Lcom/narvii/community/CommunityRecycleAdapter;

    .line 52
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PromotionalImageView;

    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    const p1, 0x7f090b5b

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f090562

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method
