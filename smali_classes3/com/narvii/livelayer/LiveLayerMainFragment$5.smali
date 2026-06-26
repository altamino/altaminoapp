.class Lcom/narvii/livelayer/LiveLayerMainFragment$5;
.super Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

.field final synthetic val$data:Lcom/narvii/livelayer/LiveLayerMainData;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected blockUserClick()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MembersOnline"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainData;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    if-eqz v0, :cond_0

    .line 310
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    move-result v0

    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 316
    :cond_1
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "online-members"

    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    const v0, 0x7f0805b6

    return v0
.end method

.method public getTitleIconBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0b56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMoreItemClick()Z
    .locals 2

    .line 346
    const-class v0, Lcom/narvii/onlinestatus/OnlineMembersFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$5;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
