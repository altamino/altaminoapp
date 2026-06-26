.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCommunityRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 339
    check-cast p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->onBindViewHolder(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-nez p2, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 369
    :cond_1
    iget-object v0, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 370
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_2
    iget-object v0, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_3

    .line 374
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 377
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;Lcom/narvii/model/Community;Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;
    .locals 2

    .line 356
    iget-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0608

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 357
    new-instance p2, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
