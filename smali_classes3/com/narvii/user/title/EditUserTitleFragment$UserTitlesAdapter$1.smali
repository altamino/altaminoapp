.class Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 660
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_2

    .line 661
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/api/UserTitle;

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$1400(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 664
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 665
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    const v2, 0x7f0f0262

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 666
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 667
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserTitle;

    .line 671
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 673
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 674
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 675
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 676
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$600(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 678
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$1400(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 680
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;->this$1:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$500(Lcom/narvii/user/title/EditUserTitleFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
