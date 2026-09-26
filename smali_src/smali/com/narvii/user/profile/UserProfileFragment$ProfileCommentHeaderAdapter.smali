.class Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;
.super Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/user/profile/UserProfileFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCommentRefresh()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 18
    return-void
.end method

.method public onCommentSort(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 8
    return-void
.end method
