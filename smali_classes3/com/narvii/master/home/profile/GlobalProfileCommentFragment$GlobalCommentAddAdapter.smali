.class final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;
.super Lcom/narvii/user/profile/adapter/CommentAddAdapter;
.source "GlobalProfileCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalCommentAddAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileCommentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileCommentFragment.kt\ncom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter\n*L\n1#1,183:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-direct {p0, p2}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getCommentBackgroundRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0801fc

    goto :goto_0

    :cond_0
    const p1, 0x7f0801fd

    :goto_0
    return p1
.end method

.method protected getCommentTextColor(Z)I
    .locals 0

    const-string p1, "#80FFFFFF"

    .line 143
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onCommentNew()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {v0}, Lcom/narvii/model/User;->objectType()I

    move-result v2

    const-string v3, "parentType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 130
    invoke-static {p0, v0, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stat_parent_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "autoJoin"

    .line 131
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "showEmojiOnly"

    .line 132
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    :cond_0
    return-void
.end method
