.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;
.super Ljava/lang/Object;
.source "MonetizationStoreAvatarFrameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$100(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$100(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    move-result-object v0

    new-instance v1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    return-void
.end method
