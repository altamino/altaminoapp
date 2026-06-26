.class public final Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;
.super Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.source "ProfileListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/ProfileListFragment;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field final synthetic $avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field final synthetic this$0:Lcom/narvii/master/home/profile/ProfileListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/IStoreItem;",
            ")V"
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    iput-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iput-object p3, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0, p4, p5}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method
