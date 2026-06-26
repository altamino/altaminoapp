.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "CommunitySearchListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->onBindViewHolder(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;Lcom/narvii/model/Community;Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 380
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 381
    new-instance v2, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    invoke-direct {v2, p1, p1, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/widget/NVImageView;)V

    .line 382
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityUserInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    :goto_0
    move-object v6, p1

    .line 384
    iget-object v4, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    iget v3, v4, Lcom/narvii/model/Community;->id:I

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method
