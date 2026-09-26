.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;
.super Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->refreshUserViewDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->onPurchaseSuccess(Lcom/narvii/model/NVObject;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5$1;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;)V

    .line 9
    .line 10
    const-wide/16 v0, 0x12c

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method
