.class public final Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;
.super Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.source "SourceFile"


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


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;->$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 8
    return-void
.end method
