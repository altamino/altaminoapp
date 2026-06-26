.class final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "GlobalProfileCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalCommentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected getListEndItemTextColor(Z)I
    .locals 0

    const-string p1, "#80FFFFFF"

    .line 174
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method protected isNestedScrollMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onNestedCollapse()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    .line 170
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->getOnCommentToTop()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    :cond_0
    return-void
.end method
