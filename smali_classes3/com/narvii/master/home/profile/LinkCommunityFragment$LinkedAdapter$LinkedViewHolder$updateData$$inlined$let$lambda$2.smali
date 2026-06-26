.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "LinkCommunityFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->updateData(Lcom/narvii/model/Community;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position$inlined:I

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iput p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->$position$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "event"

    .line 293
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 296
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p2, p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p2, p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getItemTouchHelper$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
