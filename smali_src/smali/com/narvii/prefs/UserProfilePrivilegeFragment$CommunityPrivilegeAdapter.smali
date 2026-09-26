.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/UserProfilePrivilegeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommunityPrivilegeAdapter"
.end annotation


# instance fields
.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field final synthetic this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "myCommunityList"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 20
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return v2

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-lez v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v0

    .line 42
    .line 43
    add-int/lit8 v2, v0, 0x1

    .line 44
    :cond_2
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 42
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x2

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x3

    .line 22
    return p1

    .line 23
    :cond_2
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/Community;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0456

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    const p3, 0x7f0a036b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    const p3, 0x7f0a037c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    const/4 p3, -0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    return-object p2

    .line 57
    .line 58
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 59
    .line 60
    if-ne p1, v0, :cond_1

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0d0393

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 70
    const/4 p3, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 74
    return-object p1

    .line 75
    .line 76
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    .line 6
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p3, Lcom/narvii/model/Community;

    .line 13
    .line 14
    iget p2, p3, Lcom/narvii/model/Community;->id:I

    .line 15
    .line 16
    const-string p3, "__communityId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 22
    .line 23
    .line 24
    const p3, 0x7f120137

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-string/jumbo p3, "title"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    const-string p2, "privilegeKey"

    .line 36
    .line 37
    const-string p3, "privilegeOfChatInviteRequest"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method
