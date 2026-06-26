.class Lcom/narvii/user/title/EditUserTitleFragment$8;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagRemoved(Lcom/narvii/model/api/UserTitle;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$800(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 350
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$900(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method
