.class final Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "MiniVVContentFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->access$isAllMuted$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    goto/16 :goto_4

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->access$getRtcService$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 87
    iget-object v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 88
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    .line 92
    :cond_4
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0bdf

    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0c29

    .line 94
    new-instance v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$1;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f119f

    .line 97
    new-instance v2, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;-><init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 101
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_4

    .line 90
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    :goto_4
    return-void
.end method
