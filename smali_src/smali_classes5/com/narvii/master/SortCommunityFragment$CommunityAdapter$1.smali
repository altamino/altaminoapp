.class Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->this$1:Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->val$item:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/MasterLeaveCommunityHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->this$1:Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;->this$0:Lcom/narvii/master/SortCommunityFragment;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;->val$item:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/model/Community;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method
