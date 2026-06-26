.class Lcom/narvii/user/profile/UserProfileFragment$13;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090a50

    if-eq v0, v1, :cond_0

    .line 1087
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 1091
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c20

    const-string v2, "id"

    if-ne v0, v1, :cond_2

    .line 1092
    const-class p1, Lcom/narvii/user/list/FollowingListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1093
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1095
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c1f

    if-ne v0, v1, :cond_3

    .line 1096
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1097
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1099
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c42

    const/4 v3, 0x0

    if-ne v0, v1, :cond_7

    .line 1100
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 1103
    :cond_4
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 1104
    iget p1, p1, Lcom/narvii/model/User;->visitPrivacy:I

    if-gtz p1, :cond_5

    const/4 p1, 0x0

    .line 1105
    :cond_5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "VisitorIcon"

    .line 1106
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 1107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "privacyMode"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1109
    const-class v0, Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1110
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1112
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_6
    :goto_0
    return-void

    .line 1113
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c10

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f090764

    if-ne v0, v4, :cond_8

    goto/16 :goto_4

    .line 1150
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903c0

    if-ne v0, v1, :cond_9

    .line 1151
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "edit button"

    invoke-virtual {p1, v0, v3}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1152
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090720

    if-ne v0, v1, :cond_b

    .line 1153
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1154
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V

    goto/16 :goto_6

    .line 1156
    :cond_a
    sget-object v0, Lcom/narvii/widget/MoodView;->SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1158
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901ed

    if-ne v0, v1, :cond_c

    .line 1159
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->startChat()V

    goto/16 :goto_6

    .line 1162
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c18

    if-ne v0, v1, :cond_d

    .line 1163
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "follow"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1164
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090701

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090c38

    if-ne v0, v2, :cond_e

    goto :goto_1

    .line 1172
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09002a

    if-ne v0, v1, :cond_f

    .line 1173
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "My User Profile Page"

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$400(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1174
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a3

    if-ne p1, v0, :cond_19

    .line 1175
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$500(Lcom/narvii/user/profile/UserProfileFragment;)V

    goto/16 :goto_6

    .line 1165
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    const-string v2, "Ranking Bar"

    const-string v3, "Reputation"

    if-eqz v0, :cond_12

    .line 1166
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_11

    goto :goto_2

    :cond_11
    move-object v2, v3

    :goto_2
    invoke-static {v0, v2}, Lcom/narvii/user/profile/UserProfileFragment;->access$400(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1168
    :cond_12
    const-class v0, Lcom/narvii/achievements/AllRanksFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_13

    goto :goto_3

    :cond_13
    move-object v2, v3

    :goto_3
    const-string p1, "Source"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1114
    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_16

    .line 1116
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "UserIcon"

    .line 1117
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_5

    :cond_15
    const/4 v1, 0x0

    .line 1118
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "isLiveChatting"

    invoke-virtual {p1, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1119
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_16
    if-eqz v0, :cond_17

    .line 1121
    iget-object p1, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1122
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1123
    iget-object v0, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1127
    :cond_17
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1128
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1129
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1127

    .line 1130
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f1135

    .line 1131
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f1128

    .line 1132
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1133
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$13$1;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$13$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$13;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1146
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_6

    .line 1148
    :cond_18
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$13;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->gallery(Lcom/narvii/model/Media;)V

    :cond_19
    :goto_6
    return-void
.end method
