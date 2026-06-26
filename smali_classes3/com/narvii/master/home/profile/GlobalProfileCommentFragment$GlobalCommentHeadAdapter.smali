.class final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;
.super Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.source "GlobalProfileCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalCommentHeadAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method


# virtual methods
.method protected getBackgroundColorRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0600ee

    goto :goto_0

    :cond_0
    const p1, 0x7f0600ef

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onCommentRefresh()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public onCommentSort(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    :cond_0
    return-void
.end method

.method protected showCommentTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected userProfilePrivilegeFragmentIsDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
