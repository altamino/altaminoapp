.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0e51

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a06d5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    .line 28
    return-void
.end method
