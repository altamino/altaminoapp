.class Lcom/narvii/item/list/ItemGridExAdapter$3;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$item:Lcom/narvii/model/Item;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/list/ItemGridExAdapter;->m(Lcom/narvii/item/list/ItemGridExAdapter;)Ljava/util/HashSet;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$item:Lcom/narvii/model/Item;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    .line 44
    .line 45
    iget v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$3;->val$v:I

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 50
    :cond_0
    return-void
.end method
