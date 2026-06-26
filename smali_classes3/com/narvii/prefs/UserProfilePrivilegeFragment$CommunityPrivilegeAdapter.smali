.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfilePrivilegeFragment.java"


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

    .line 213
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 214
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "myCommunityList"

    .line 211
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 p1, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

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

    .line 253
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v1, v1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 243
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :cond_2
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 277
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 279
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 329
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 330
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 332
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 334
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 292
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b0420

    .line 294
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0902a3

    .line 295
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f0902b6

    .line 296
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2

    .line 300
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b0359

    .line 301
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 302
    iget-object p2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return-object p1

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

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

    .line 316
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 317
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 344
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 345
    const-class p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 346
    check-cast p3, Lcom/narvii/model/Community;

    iget p2, p3, Lcom/narvii/model/Community;->id:I

    const-string p3, "__communityId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    iget-object p2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    const p3, 0x7f0f00f9

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "title"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "privilegeKey"

    const-string p3, "privilegeOfChatInviteRequest"

    .line 348
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 352
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onResume()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

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

    .line 231
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
