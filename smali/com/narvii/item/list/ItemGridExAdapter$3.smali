.class Lcom/narvii/item/list/ItemGridExAdapter$3;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "ItemGridExAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/list/ItemGridExAdapter;->vote(Lcom/narvii/model/Item;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/list/ItemGridExAdapter;

.field final synthetic val$item:Lcom/narvii/model/Item;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/narvii/item/list/ItemGridExAdapter;Lcom/narvii/model/Item;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$item:Lcom/narvii/model/Item;

    iput p3, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    invoke-static {v0}, Lcom/narvii/item/list/ItemGridExAdapter;->access$000(Lcom/narvii/item/list/ItemGridExAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$item:Lcom/narvii/model/Item;

    iget-object v1, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    .line 265
    iget p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iget-object v0, p1, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iget-object p1, p1, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
