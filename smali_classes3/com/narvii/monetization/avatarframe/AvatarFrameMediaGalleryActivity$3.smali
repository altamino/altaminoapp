.class Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;
.super Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;
.source "AvatarFrameMediaGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method


# virtual methods
.method public onClickActivateItem()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->activate:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ProfileFrameBottomBar"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 160
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickActivateItem()V

    return-void
.end method

.method public onClickGetItem()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ProfileFrameBottomBar"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 166
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickGetItem()V

    return-void
.end method

.method public onClickMemberShip()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ProfileFrameBottomBar"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 178
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickMemberShip()V

    return-void
.end method

.method public onClickUseItem()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->use:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ProfileFrameBottomBar"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 172
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickUseItem()V

    return-void
.end method

.method protected updateViewStatus()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->updateViewStatus()V

    .line 137
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v1, v0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    if-eqz v1, :cond_3

    .line 138
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$400(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
