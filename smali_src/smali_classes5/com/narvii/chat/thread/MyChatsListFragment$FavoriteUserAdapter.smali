.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;
.super Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static synthetic j(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->lambda$onItemClicked$0(Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;ILcom/narvii/model/NVObject;)V

    return-void
.end method

.method private synthetic lambda$onItemClicked$0(Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    .line 2
    .line 3
    if-ne p3, p4, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string p3, "Source"

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p2, 0x1

    .line 27
    .line 28
    if-ne p3, p2, :cond_2

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->startChat(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p2, 0x3

    .line 36
    .line 37
    if-ne p3, p2, :cond_3

    .line 38
    .line 39
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 40
    .line 41
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method protected onBindEndViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onBindEndViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    .line 8
    const p2, 0x7f0a0230

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f08058e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f080165

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v0, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 54
    const/4 p2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method

.method protected onEndItemClicked()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onEndItemClicked()V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "Source"

    .line 12
    .line 13
    const-string v2, "My Chats"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p2, p1, Lcom/narvii/model/User;

    .line 10
    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/User;

    .line 14
    .line 15
    iget p2, p1, Lcom/narvii/model/User;->status:I

    .line 16
    const/4 p3, 0x3

    .line 17
    .line 18
    if-ne p2, p3, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 32
    .line 33
    .line 34
    const p3, 0x7f12074a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const/4 p2, 0x4

    .line 43
    const/4 p3, 0x0

    .line 44
    .line 45
    .line 46
    const v0, 0x104000a

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->x(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/modulization/CommunityConfigHelper;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 63
    move-result p2

    .line 64
    .line 65
    const-string p3, "Favorite Members"

    .line 66
    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    return-void

    .line 77
    .line 78
    :cond_1
    const-string p2, "Source"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 87
    return-void

    .line 88
    .line 89
    :cond_2
    new-instance p2, Lcom/narvii/onlinestatus/UserDialog;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, v0, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 99
    .line 100
    iput-object p3, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 101
    .line 102
    new-instance p3, Lcom/narvii/chat/thread/c;

    .line 103
    .line 104
    .line 105
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/thread/c;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    .line 112
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "chatInvite"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v1, "chat"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    const-string v1, "uid"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method
