.class Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;
.super Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.source "AvatarFrameSettingPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

.field final synthetic val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 496
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-direct {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 497
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method
