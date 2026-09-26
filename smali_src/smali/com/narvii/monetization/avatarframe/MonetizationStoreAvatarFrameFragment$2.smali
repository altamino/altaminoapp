.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->C(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->C(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;-><init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    .line 24
    return-void
.end method
