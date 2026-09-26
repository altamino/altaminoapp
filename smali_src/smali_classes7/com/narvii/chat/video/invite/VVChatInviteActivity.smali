.class public Lcom/narvii/chat/video/invite/VVChatInviteActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/call/CallStatusChangeListener;


# static fields
.field public static final KEY_CALLER_INFO:Ljava/lang/String; = "key_caller_info"

.field public static final KEY_COMMUNITY_ID:Ljava/lang/String; = "key_community_id"

.field public static final KEY_COMMUNITY_INFO:Ljava/lang/String; = "key_community_info"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "key_pay_load"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "key_thread_id"

.field public static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/chat/video/invite/VVChatInviteActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionAccept:Landroid/view/View;

.field private actionDeclined:Landroid/view/View;

.field callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private caller:Lcom/narvii/model/User;

.field private community:Lcom/narvii/model/Community;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private communityIconView:Lcom/narvii/widget/CommunityIconView;

.field private communityInfoContainer:Landroid/view/View;

.field private hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

.field private imgAvatar:Lcom/narvii/widget/ThumbImageView;

.field private imgInviteBg:Lcom/narvii/widget/NVImageView;

.field private isRinging:Z

.field private membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

.field private payload:Lcom/narvii/pushservice/PushPayload;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private final screenStatusReceiver:Landroid/content/BroadcastReceiver;

.field private tvCommunityName:Landroid/widget/TextView;

.field private tvHintInfo:Landroid/widget/TextView;

.field private tvInviteHint:Landroid/widget/TextView;

.field private vibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method private acceptCall()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v2, "Source"

    .line 20
    .line 21
    const-string v3, "Call Screen"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I

    .line 30
    move-result v2

    .line 31
    .line 32
    const-string v3, "channel_type"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    const-string v2, "auto_join_as_presenter"

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/model/ChatThread;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iput-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    iput v1, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    iput-object v3, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    .line 65
    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    :cond_0
    const-string v3, "thread"

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    const-class v2, Lcom/narvii/chat/ChatFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v2}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->recordChatActivity()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    const/4 v1, 0x6

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->vibrate:Landroid/os/Vibrator;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 114
    return-void
.end method

.method private declineCall()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->sendDeclineMessage()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v1, 0x6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 18
    return-void
.end method

.method private disableButtons()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 12
    return-void
.end method

.method private finishCallScreen()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 12
    return-void
.end method

.method private getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    if-eq p1, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x1e

    .line 13
    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    const/16 v1, 0x23

    .line 18
    .line 19
    if-eq p1, v1, :cond_3

    .line 20
    .line 21
    const/16 v1, 0x22

    .line 22
    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    :goto_0
    const/4 p1, 0x3

    .line 27
    return p1

    .line 28
    :cond_4
    :goto_1
    const/4 p1, 0x4

    .line 29
    return p1
.end method

.method private recordChatActivity()V
    .locals 6

    .line 1
    .line 2
    const-string v0, "globalChat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 9
    .line 10
    const-string v1, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    new-instance v2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 21
    .line 22
    iget-object v4, v3, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v3, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3, v1}, Lcom/narvii/chat/global/GlobalChatThread;-><init>(Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 37
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendDeclineMessage()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "chat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 20
    .line 21
    const/16 v3, 0x36

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    .line 27
    move-result v2

    .line 28
    const/4 v4, 0x1

    .line 29
    .line 30
    if-ne v2, v4, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    .line 37
    move-result v2

    .line 38
    const/4 v4, 0x2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    const/16 v3, 0x39

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    .line 49
    move-result v2

    .line 50
    const/4 v4, 0x3

    .line 51
    .line 52
    if-ne v2, v4, :cond_2

    .line 53
    .line 54
    const/16 v3, 0x3c

    .line 55
    .line 56
    :cond_2
    :goto_0
    const-string v2, "key_thread_id"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v2, "account"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 73
    .line 74
    iget-object v3, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    new-instance v3, Lcom/narvii/model/User;

    .line 79
    .line 80
    .line 81
    invoke-direct {v3}, Lcom/narvii/model/User;-><init>()V

    .line 82
    .line 83
    iput-object v3, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    iput-object v2, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->recordChatActivity()V

    .line 96
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->finishCallScreen()V

    return-void
.end method

.method private updateHintInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    const-wide/16 v0, 0x1388

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 57
    :cond_2
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgAvatar:Lcom/narvii/widget/ThumbImageView;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgInviteBg:Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvInviteHint:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    .line 48
    const v1, 0x7f120863

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const-string v0, "key_community_id"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityInfoContainer:Landroid/view/View;

    .line 70
    const/4 v1, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 94
    .line 95
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0803cf

    .line 122
    goto :goto_0

    .line 123
    .line 124
    .line 125
    :cond_6
    const v0, 0x7f0803d0

    .line 126
    .line 127
    .line 128
    :goto_0
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 135
    .line 136
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    const/high16 v1, 0x40800000    # 4.0f

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 149
    move-result v0

    .line 150
    .line 151
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    .line 157
    .line 158
    .line 159
    const v1, 0x7f12030d

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCallStatusChanged(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    .line 10
    const-wide/16 v1, 0x5dc

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f1201d2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateHintInfo(Ljava/lang/String;)V

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x8

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1201d4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateHintInfo(Ljava/lang/String;)V

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity$5;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$5;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    const/4 v0, 0x6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a002e

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0410

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->declineCall()V

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I

    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 29
    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    .line 33
    filled-new-array {v1}, [Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    const-string p1, "android.permission.CAMERA"

    .line 38
    .line 39
    .line 40
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    const/16 v0, 0x6d

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$2;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$2;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 72
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 17
    .line 18
    :cond_0
    const-string p1, "rtc"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0d0038

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    const p1, 0x7f0d0039

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    const v0, 0x680080

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 53
    .line 54
    const-string p1, "callScreen"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 63
    .line 64
    const-string v0, "id"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0a002e

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    const p1, 0x7f0a0410

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    const p1, 0x7f0a0171

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgAvatar:Lcom/narvii/widget/ThumbImageView;

    .line 101
    .line 102
    .line 103
    const p1, 0x7f0a073e

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgInviteBg:Lcom/narvii/widget/NVImageView;

    .line 112
    .line 113
    .line 114
    const p1, 0x7f0a0242

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Landroid/widget/TextView;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    .line 123
    .line 124
    .line 125
    const p1, 0x7f0a0372

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityInfoContainer:Landroid/view/View;

    .line 132
    .line 133
    .line 134
    const p1, 0x7f0a0741

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    check-cast p1, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvInviteHint:Landroid/widget/TextView;

    .line 143
    .line 144
    .line 145
    const p1, 0x7f0a095b

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 154
    .line 155
    .line 156
    const p1, 0x7f0a037c

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    check-cast p1, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    .line 165
    .line 166
    .line 167
    const p1, 0x7f0a036b

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    check-cast p1, Lcom/narvii/widget/CommunityIconView;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 176
    .line 177
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    const-string p1, "key_caller_info"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    const-class v0, Lcom/narvii/model/User;

    .line 194
    .line 195
    .line 196
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    check-cast p1, Lcom/narvii/model/User;

    .line 200
    .line 201
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    .line 202
    .line 203
    const-string p1, "key_community_info"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    const-class v0, Lcom/narvii/model/Community;

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    check-cast p1, Lcom/narvii/model/Community;

    .line 216
    .line 217
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 218
    .line 219
    const-string v0, "key_community_id"

    .line 220
    .line 221
    if-nez p1, :cond_2

    .line 222
    .line 223
    const-string p1, "community"

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 233
    move-result v1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 240
    .line 241
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 245
    move-result v0

    .line 246
    .line 247
    const-string v1, "key_thread_id"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 255
    .line 256
    const-string p1, "key_pay_load"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    const-class v0, Lcom/narvii/pushservice/PushPayload;

    .line 263
    .line 264
    .line 265
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    .line 269
    .line 270
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 271
    .line 272
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    .line 275
    .line 276
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 277
    .line 278
    .line 279
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    .line 284
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 288
    move-result p1

    .line 289
    const/4 v0, 0x2

    .line 290
    .line 291
    if-eq p1, v0, :cond_3

    .line 292
    .line 293
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 297
    move-result p1

    .line 298
    .line 299
    if-nez p1, :cond_4

    .line 300
    .line 301
    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 303
    .line 304
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 305
    .line 306
    .line 307
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 308
    .line 309
    sput-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 310
    .line 311
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 312
    const/4 v0, 0x0

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 319
    move-result-object p1

    .line 320
    .line 321
    const-string v0, "vibrator"

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    check-cast p1, Landroid/os/Vibrator;

    .line 328
    .line 329
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->vibrate:Landroid/os/Vibrator;

    .line 330
    .line 331
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 332
    .line 333
    .line 334
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 335
    .line 336
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 337
    .line 338
    .line 339
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateViews()V

    .line 340
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v1, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 29
    .line 30
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-ne v0, p0, :cond_1

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    sput-object v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 42
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCancelCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->finishCallScreen()V

    .line 35
    :goto_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPermissionGranted(I)V

    .line 4
    .line 5
    const/16 v0, 0x6d

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->acceptCall()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 11
    move-result v0

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->isRinging:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->isRinging:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->onCallComeIn()V

    .line 28
    :cond_0
    return-void
.end method
