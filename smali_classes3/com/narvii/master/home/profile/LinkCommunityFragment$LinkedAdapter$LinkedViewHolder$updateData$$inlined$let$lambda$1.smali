.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "LinkCommunityFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iput p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->$position$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 278
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->getSupportDragSort()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->$position$inlined:I

    invoke-static {p1, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$removeLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    iget v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter$LinkedViewHolder$updateData$$inlined$let$lambda$1;->$position$inlined:I

    invoke-static {p1, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$addLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V

    :goto_0
    return-void
.end method
