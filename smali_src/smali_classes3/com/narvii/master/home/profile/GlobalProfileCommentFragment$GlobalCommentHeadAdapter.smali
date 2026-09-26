.class final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;
.super Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, p3}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getBackgroundColorRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060138

    goto :goto_0

    :cond_0
    const p1, 0x7f060139

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public onCommentRefresh()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->resetList()V

    .line 12
    :cond_0
    return-void
.end method

.method public onCommentSort(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 12
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
