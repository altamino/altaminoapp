.class Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;
.super Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileCommentHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;Z)V
    .locals 0

    .line 3059
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3060
    invoke-direct {p0, p2, p3}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method


# virtual methods
.method public onCommentRefresh()V
    .locals 2

    .line 3070
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 3071
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    return-void
.end method

.method public onCommentSort(I)V
    .locals 1

    .line 3065
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    return-void
.end method
