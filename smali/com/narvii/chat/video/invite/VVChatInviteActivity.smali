.class public Lcom/narvii/chat/video/invite/VVChatInviteActivity;
.super Lcom/narvii/app/NVActivity;
.source "VVChatInviteActivity.java"

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

    .line 61
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 183
    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    iput-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    iput-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private acceptCall()V
    .locals 5

    .line 304
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 306
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Source"

    const-string v3, "Call Screen"

    .line 307
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    invoke-direct {p0, v2}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I

    move-result v2

    const-string v3, "channel_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "auto_join_as_presenter"

    const/4 v3, 0x1

    .line 309
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    new-instance v2, Lcom/narvii/model/ChatThread;

    invoke-direct {v2}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 311
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 312
    iput v1, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 314
    iget-object v3, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    if-eqz v3, :cond_0

    .line 315
    iget-object v4, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "thread"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-class v2, Lcom/narvii/chat/ChatFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 319
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 321
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->recordChatActivity()V

    .line 322
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 323
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 324
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    goto :goto_0

    .line 327
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->vibrate:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->finishCallScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method private declineCall()V
    .locals 2

    .line 335
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    .line 336
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->sendDeclineMessage()V

    .line 337
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 338
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 409
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private finishCallScreen()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 298
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method private getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 175
    :cond_0
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_3

    const/16 v1, 0x22

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x4

    return p1
.end method

.method private recordChatActivity()V
    .locals 6

    const-string v0, "globalChat"

    .line 367
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    const-string v1, "config"

    .line 368
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 369
    new-instance v2, Lcom/narvii/chat/global/GlobalChatThread;

    iget-object v3, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    iget-object v4, v3, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v5, v3, Lcom/narvii/pushservice/PushPayload;->fromUser:Lcom/narvii/model/User;

    iget-object v3, v3, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-direct {v2, v4, v5, v3, v1}, Lcom/narvii/chat/global/GlobalChatThread;-><init>(Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void
.end method

.method private sendDeclineMessage()V
    .locals 5

    const-string v0, "chat"

    .line 344
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 345
    new-instance v1, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 347
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    const/16 v3, 0x36

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/16 v3, 0x39

    goto :goto_0

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    invoke-virtual {v2}, Lcom/narvii/pushservice/PushPayload;->getPayloadCallType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/16 v3, 0x3c

    :cond_2
    :goto_0
    const-string v2, "key_thread_id"

    .line 356
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;

    move-result-object v1

    const-string v2, "account"

    .line 357
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 358
    iget-object v3, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v3, :cond_3

    .line 359
    new-instance v3, Lcom/narvii/model/User;

    invoke-direct {v3}, Lcom/narvii/model/User;-><init>()V

    iput-object v3, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 360
    iget-object v3, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 362
    :cond_3
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 363
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->recordChatActivity()V

    return-void
.end method

.method private updateHintInfo(Ljava/lang/String;)V
    .locals 2

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 415
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgAvatar:Lcom/narvii/widget/ThumbImageView;

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgInviteBg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_2

    .line 214
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    if-eqz v0, :cond_3

    .line 218
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvInviteHint:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v1, 0x7f0f07af

    .line 223
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_5

    const-string v0, "key_community_id"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    iget-object v2, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    iget-object v2, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 229
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_6

    const v0, 0x7f0802c5

    goto :goto_0

    :cond_6
    const v0, 0x7f0802c6

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 238
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    const v1, 0x7f0f02c2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-wide/16 v1, 0x5dc

    if-ne p1, v0, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    const p1, 0x7f0f0186

    .line 379
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateHintInfo(Ljava/lang/String;)V

    .line 380
    new-instance p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->disableButtons()V

    const p1, 0x7f0f0188

    .line 391
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateHintInfo(Ljava/lang/String;)V

    .line 392
    new-instance p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity$5;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$5;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 401
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    .line 402
    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090021

    if-eq p1, v0, :cond_1

    const v0, 0x7f090335

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->declineCall()V

    goto :goto_1

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->getSignalChannelType(Lcom/narvii/pushservice/PushPayload;)I

    move-result p1

    const-string v0, "android.permission.RECORD_AUDIO"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "android.permission.CAMERA"

    aput-object v0, p1, v2

    .line 251
    :goto_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x6d

    .line 254
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$2;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 255
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const-string/jumbo p1, "rtc"

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 100
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x7f0b0036

    goto :goto_0

    :cond_1
    const p1, 0x7f0b0037

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680080

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string p1, "callScreen"

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 109
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    const p1, 0x7f090021

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    const p1, 0x7f090335

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    const p1, 0x7f0900e4

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgAvatar:Lcom/narvii/widget/ThumbImageView;

    const p1, 0x7f0905c1

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->imgInviteBg:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09018e

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvHintInfo:Landroid/widget/TextView;

    const p1, 0x7f0902ab

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityInfoContainer:Landroid/view/View;

    const p1, 0x7f0905c4

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvInviteHint:Landroid/widget/TextView;

    const p1, 0x7f0906f9

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    const p1, 0x7f0902b6

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->tvCommunityName:Landroid/widget/TextView;

    const p1, 0x7f0902a3

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/CommunityIconView;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 122
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionAccept:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->actionDeclined:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "key_caller_info"

    .line 124
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->caller:Lcom/narvii/model/User;

    const-string p1, "key_community_info"

    .line 125
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 126
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    const-string v0, "key_community_id"

    if-nez p1, :cond_2

    const-string p1, "community"

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 128
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->community:Lcom/narvii/model/Community;

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_thread_id"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    const-string p1, "key_pay_load"

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/pushservice/PushPayload;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 132
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 134
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result p1

    if-nez p1, :cond_4

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 137
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 138
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->setMissedIntent(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->vibrate:Landroid/os/Vibrator;

    .line 140
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 141
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->updateViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    const-string v1, "id"

    .line 163
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 165
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 166
    sput-object v0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

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

    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 283
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;-><init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    .line 284
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCancelCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->finishCallScreen()V

    :goto_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPermissionGranted(I)V

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->acceptCall()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->isRinging:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->isRinging:Z

    .line 153
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->onCallComeIn()V

    :cond_0
    return-void
.end method
