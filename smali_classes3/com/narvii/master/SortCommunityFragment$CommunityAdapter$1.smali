.class Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;
.super Ljava/lang/Object;
.source "SortCommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->this$1:Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;

    iput-object p2, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    new-instance p1, Lcom/narvii/master/MasterLeaveCommunityHelper;

    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->this$1:Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;

    iget-object v0, v0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;->this$0:Lcom/narvii/master/SortCommunityFragment;

    invoke-direct {p1, v0}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->val$item:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Community;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    return-void
.end method
