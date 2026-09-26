.class final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    .line 30
    move-result v1

    .line 31
    :goto_0
    return v1
.end method

.method protected getListEndItemTextColor(Z)I
    .locals 0

    .line 1
    .line 2
    const-string p1, "#80FFFFFF"

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected isNestedScrollMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onNestedCollapse()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->onNestedCollapse()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->getOnCommentToTop()Le8/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 15
    :cond_0
    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "intent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 8
    .line 9
    const/16 v1, 0x6f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 13
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 12
    :cond_0
    return-void
.end method
