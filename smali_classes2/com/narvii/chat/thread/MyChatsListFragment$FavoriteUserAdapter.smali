.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;
.super Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 466
    invoke-direct {p0, p1}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 566
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected onBindEndViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 535
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onBindEndViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 536
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090185

    .line 537
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    if-nez p2, :cond_0

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080466

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p2, v0}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    const/4 p2, 0x0

    .line 542
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onEndItemClicked()V
    .locals 3

    .line 548
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onEndItemClicked()V

    .line 549
    const-class v0, Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "My Chats"

    .line 550
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1

    .line 471
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V

    .line 472
    invoke-virtual {p0, p2}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 473
    instance-of p2, p1, Lcom/narvii/model/User;

    if-eqz p2, :cond_3

    .line 474
    check-cast p1, Lcom/narvii/model/User;

    .line 475
    iget p2, p1, Lcom/narvii/model/User;->status:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 476
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 477
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const p3, 0x7f0f069f

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x104000a

    const/4 p3, 0x4

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p1, p2, p3, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 479
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 483
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$100(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/modulization/CommunityConfigHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result p2

    const-string p3, "Favorite Members"

    if-nez p2, :cond_2

    .line 484
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "Source"

    .line 486
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 490
    :cond_2
    new-instance p2, Lcom/narvii/onlinestatus/UserDialog;

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 491
    iput-object p3, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 492
    new-instance p3, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V

    invoke-virtual {p2, p3}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 509
    invoke-virtual {p2}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    :cond_3
    return-void
.end method

.method protected showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 515
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 517
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    .line 523
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
