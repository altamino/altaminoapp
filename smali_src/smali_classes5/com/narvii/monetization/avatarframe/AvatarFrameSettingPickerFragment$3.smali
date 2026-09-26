.class Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;
.super Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

.field final synthetic val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field final synthetic val$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;->val$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;->val$avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 8
    return-void
.end method
