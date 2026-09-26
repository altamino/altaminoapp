.class public final Lcom/narvii/chat/dialog/VVChatUserDialog;
.super Lcom/narvii/onlinestatus/UserDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;,
        Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    }
.end annotation


# instance fields
.field private final account$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private channelType:I

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatThread:Lcom/narvii/model/ChatThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final config$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curUserIsGuest:Z

.field private final flagView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leaveCurChat$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leaveCurChatContainer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private muteVideoWhenBlockUser:Z

.field private needVideoFrameWhenFlag:Z

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onHoldContainer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtc$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final speakerActionView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startChatView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private threadId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    iput-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    iput-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 4
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$account$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$account$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->account$delegate:Lw7/m;

    .line 5
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->rtc$delegate:Lw7/m;

    .line 6
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$config$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$config$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->config$delegate:Lw7/m;

    const v0, 0x7f0a07d4

    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChatContainer$delegate:Lw7/m;

    const v0, 0x7f0a07d3

    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChat$delegate:Lw7/m;

    const v0, 0x7f0a0d5d

    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->speakerActionView$delegate:Lw7/m;

    const v0, 0x7f0a0a4e

    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->onHoldContainer$delegate:Lw7/m;

    const v0, 0x7f0a05b8

    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->flagView$delegate:Lw7/m;

    const v0, 0x7f0a0a63

    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->startChatView$delegate:Lw7/m;

    .line 13
    new-instance v0, Lcom/narvii/chat/dialog/j;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/j;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lcom/narvii/chat/dialog/k;

    invoke-direct {v0, p1, p2, p0}, Lcom/narvii/chat/dialog/k;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-void
.end method

.method public static final synthetic access$setChannelType$p(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    return-void
.end method

.method public static final synthetic access$setCurUserIsGuest$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsGuest:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setMuteVideoWhenBlockUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setNeedVideoFrameWhenFlag$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setThreadId$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->threadId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static final synthetic access$setVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 3
    return-void
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/dialog/VVChatUserDialog$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$bind$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final curUserIsCoHost()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private final curUserIsHost()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private final curUserIsHostOrCoHost()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private final curUserIsSpeaker()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final curUserIsVideoPlayer()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isScreenRoom()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public static synthetic d(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable$lambda$0(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/dialog/VVChatUserDialog;->listener$lambda$2(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;ILcom/narvii/model/NVObject;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveChatRequest$lambda$17(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog$lambda$14$lambda$13(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V

    return-void
.end method

.method private final getFlagView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->flagView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getLeaveCurChat()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChat$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getLeaveCurChatContainer()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChatContainer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getOnHoldContainer()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->onHoldContainer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getSpeakerActionView()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->speakerActionView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getStartChatView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->startChatView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic h(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeAsSpeaker$lambda$9(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V

    return-void
.end method

.method private final hasAccessRemove()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHostOrCoHost()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method

.method private final hostVisible()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public static synthetic i(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->onClick$lambda$6$lambda$4(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private final inviteAsSpeaker()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/chat/dialog/a;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/narvii/chat/dialog/a;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->inviteAsSpeaker(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 22
    return-void
.end method

.method private static final inviteAsSpeaker$lambda$8(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    const-wide/32 v0, 0x2bf20

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    :cond_0
    return-void
.end method

.method private final isCoHost()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final isCurator()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getAccount()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method private final isGroupChat()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final isHost()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final isMyself()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isMyself(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private final isOpenChat()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private final isPublicChat()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final isScreenRoom()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSingleChat()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final isSpeaker()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isSpeaker(Lcom/narvii/model/ChatThread;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final isThreadFansOnly()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static synthetic j(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest$lambda$15(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog$lambda$14$lambda$11(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog$lambda$14$lambda$12(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V

    return-void
.end method

.method private final leaveChat()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveRequest()V

    .line 4
    return-void
.end method

.method private static final listener$lambda$2(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    .line 2
    const-string p4, "$nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p4, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of p4, p0, Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    if-eqz p4, :cond_0

    .line 15
    move-object p4, p0

    .line 16
    .line 17
    check-cast p4, Lcom/narvii/app/NVFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    move-result p4

    .line 22
    .line 23
    if-nez p4, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    const/4 p4, 0x1

    .line 26
    .line 27
    if-eq p3, p4, :cond_4

    .line 28
    const/4 p4, 0x2

    .line 29
    .line 30
    if-eq p3, p4, :cond_2

    .line 31
    const/4 p1, 0x3

    .line 32
    .line 33
    if-eq p3, p1, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p2, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->onFlagClicked(Lcom/narvii/app/NVContext;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const-string p3, "Source"

    .line 47
    .line 48
    iget-object p2, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    iget-object p0, p2, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 58
    .line 59
    if-eqz p0, :cond_5

    .line 60
    .line 61
    iget-object p1, p2, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 62
    .line 63
    const-string/jumbo p2, "user"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;->onStartChat(Lcom/narvii/model/User;)V

    .line 70
    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeakerConfirmDialog$lambda$19$lambda$18(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveUserConfirmDialog$lambda$16(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeFromChat$lambda$10(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final onClick$lambda$6$lambda$4(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$this_apply"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isThreadFansOnly()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p0, Lcom/narvii/widget/ACMAlertDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f120d7d

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f1207e7

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    const-string/jumbo v0, "thread"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 65
    :goto_0
    return-void
.end method

.method private static final onClick$lambda$6$lambda$5(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog()V

    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->onClick$lambda$6$lambda$5(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->inviteAsSpeaker$lambda$8(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final quitAsSpeaker()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    const/16 v5, 0x8

    .line 12
    const/4 v6, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter$default(Lcom/narvii/chat/video/utils/VVChatHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    .line 16
    return-void
.end method

.method public static synthetic r(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeakerConfirmDialog$lambda$21$lambda$20(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method private final removeAsSpeaker()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/dialog/o;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/o;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method private static final removeAsSpeaker$lambda$9(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveAsSpeakerRequest()V

    .line 9
    return-void
.end method

.method private final removeFromChat()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest(Z)V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/chat/dialog/g;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/g;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveUserConfirmDialog(Lcom/narvii/util/Callback;)V

    .line 27
    :goto_1
    return-void
.end method

.method private static final removeFromChat$lambda$10(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest(Z)V

    .line 16
    return-void
.end method

.method private static final runnable$lambda$0(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->updateViews()V

    .line 9
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendLeaveChatRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/chat/dialog/b;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/b;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendLeaveThreadRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method private static final sendLeaveChatRequest$lambda$17(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 v0, 0x7

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getRtc()Lcom/narvii/chat/rtc/RtcService;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    .line 30
    return-void
.end method

.method private final sendLeaveRequest()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getAccount()Lcom/narvii/account/AccountService;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveChatRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private final sendRemoveAsSpeakerRequest()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getRtc()Lcom/narvii/chat/rtc/RtcService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->removeAsSpeaker(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private final sendRemoveUserRequest(Z)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    new-instance v3, Lcom/narvii/chat/dialog/h;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/narvii/chat/dialog/h;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V

    .line 30
    return-void
.end method

.method private static final sendRemoveUserRequest$lambda$15(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v1

    .line 15
    .line 16
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    const/4 p1, 0x7

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, v1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 31
    :cond_1
    return-void
.end method

.method private final showInviteAsSpeaker()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsSpeaker()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private final showLeave()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsGuest:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isGuest(Lcom/narvii/model/ChatThread;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isOpenChat()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hasAccessRemove()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method private final showLeaveChatConfirmDialog()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    const/high16 v2, -0x10000

    .line 16
    .line 17
    .line 18
    const v3, -0x444445

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSingleChat()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f1201e2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/chat/dialog/l;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/l;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 39
    .line 40
    .line 41
    const v3, 0x7f1203a0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const v1, 0x7f1203a7

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    const v5, 0x7f1212a7

    .line 56
    .line 57
    .line 58
    const v6, 0x7f120d57

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v6, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/chat/dialog/m;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/m;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const v1, 0x7f120b86

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v0, v6, v4, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/chat/dialog/n;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/n;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    const v1, 0x7f120b83

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 96
    return-void
.end method

.method private static final showLeaveChatConfirmDialog$lambda$14$lambda$11(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveChat()V

    .line 9
    return-void
.end method

.method private static final showLeaveChatConfirmDialog$lambda$14$lambda$12(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveChat()V

    .line 9
    return-void
.end method

.method private static final showLeaveChatConfirmDialog$lambda$14$lambda$13(Lcom/narvii/chat/dialog/VVChatUserDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveChat()V

    .line 9
    return-void
.end method

.method private final showOnHold()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hostVisible()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final showQuitAsSpeaker()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSpeaker()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final showQuitAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    const v3, 0x7f120f84

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v5, v2

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_3
    const v3, 0x7f120f83

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 64
    .line 65
    .line 66
    const v1, 0x7f120d57

    .line 67
    .line 68
    .line 69
    const v3, -0x444445

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/chat/dialog/i;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v0, p1}, Lcom/narvii/chat/dialog/i;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 78
    .line 79
    .line 80
    const p1, 0x7f1212a7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 87
    return-void
.end method

.method private static final showQuitAsSpeakerConfirmDialog$lambda$21$lambda$20(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$this_apply"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private final showRemoveAsSpeaker()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSingleChat()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsSpeaker()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hostVisible()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method private final showRemoveAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    const v3, 0x7f120fd9

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v5, v2

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_3
    const v3, 0x7f120fd8

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 70
    .line 71
    .line 72
    const v1, 0x7f120d57

    .line 73
    .line 74
    .line 75
    const v3, -0x444445

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/chat/dialog/e;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v0, p1}, Lcom/narvii/chat/dialog/e;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f1212a7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 93
    return-void
.end method

.method private static final showRemoveAsSpeakerConfirmDialog$lambda$19$lambda$18(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$this_apply"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private final showRemoveUserConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    new-instance v3, Lcom/narvii/chat/dialog/f;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, p1}, Lcom/narvii/chat/dialog/f;-><init>(Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method

.method private static final showRemoveUserConfirmDialog$lambda$16(Lcom/narvii/util/Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 6
    :cond_0
    return-void
.end method

.method private final showSpeakerView()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    return-void
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->account$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->config$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    return-object v0
.end method

.method public final getListener()Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-object v0
.end method

.method public final getRtc()Lcom/narvii/chat/rtc/RtcService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->rtc$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 14
    return-object v0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isInvite(Lcom/narvii/model/User;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->isInvitedAsSpeaker(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d079c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    .line 30
    :goto_0
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f0a07d3

    .line 40
    .line 41
    if-ne v1, v2, :cond_6

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    const-string p1, "LeaveChat"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    const v1, 0x7f1211f0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f1211ee

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setDismissByClickOutside()V

    .line 102
    .line 103
    new-instance v1, Lcom/narvii/chat/dialog/c;

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/dialog/c;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 107
    .line 108
    .line 109
    const v2, 0x7f1211eb

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 113
    .line 114
    new-instance v1, Lcom/narvii/chat/dialog/d;

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/d;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    .line 118
    .line 119
    const/high16 v2, -0x10000

    .line 120
    .line 121
    .line 122
    const v3, 0x7f1203bb

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    const v1, 0x7f1201e2

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog()V

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_5
    const-string p1, "RemoveFromChat"

    .line 142
    .line 143
    .line 144
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeFromChat()V

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->dismiss()V

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_6
    :goto_2
    if-nez p1, :cond_7

    .line 158
    goto :goto_4

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 162
    move-result p1

    .line 163
    .line 164
    .line 165
    const v0, 0x7f0a0d5d

    .line 166
    .line 167
    if-ne p1, v0, :cond_b

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    .line 171
    move-result p1

    .line 172
    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    const-string p1, "QuitAsSpeaker"

    .line 176
    .line 177
    .line 178
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->quitAsSpeaker()V

    .line 186
    goto :goto_3

    .line 187
    .line 188
    .line 189
    :cond_8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    .line 190
    move-result p1

    .line 191
    .line 192
    if-eqz p1, :cond_9

    .line 193
    .line 194
    const-string p1, "InviteAsSpeaker"

    .line 195
    .line 196
    .line 197
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->inviteAsSpeaker()V

    .line 205
    goto :goto_3

    .line 206
    .line 207
    .line 208
    :cond_9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    .line 209
    move-result p1

    .line 210
    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    const-string p1, "RemoveAsSpeaker"

    .line 214
    .line 215
    .line 216
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 221
    .line 222
    .line 223
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeAsSpeaker()V

    .line 224
    .line 225
    .line 226
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->dismiss()V

    .line 227
    :cond_b
    :goto_4
    return-void
.end method

.method public onFlagClicked(Lcom/narvii/app/NVContext;)V
    .locals 10
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/narvii/chat/ChannelFlagHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getConfig()Lcom/narvii/config/ConfigService;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 25
    .line 26
    iget v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->threadId:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 35
    :goto_0
    move v6, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :goto_1
    iget-boolean v7, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    .line 41
    const/4 v8, 0x1

    .line 42
    .line 43
    iget-boolean v9, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V

    .line 47
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    .line 9
    return-void
.end method

.method protected updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isScreenRoom()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Screening Room"

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v0, "VV Chat"

    .line 15
    .line 16
    :goto_0
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getOnHoldContainer()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showOnHold()Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getFlagView()Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 36
    move-result v1

    .line 37
    xor-int/2addr v1, v2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getStartChatView()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    move v1, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v1, v3

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChatContainer()Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeave()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    const v1, -0xb5b5b6

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    const v4, 0x7f120b88

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    const v4, 0x7f120fdf

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    const v4, -0x15edee

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showSpeakerView()Z

    .line 131
    move-result v4

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v4, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    .line 141
    const v4, 0x7f080955

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    const v2, 0x7f120f82

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    goto :goto_3

    .line 169
    .line 170
    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    const v2, 0x7f120fd7

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    goto :goto_3

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 208
    .line 209
    const-string/jumbo v5, "user"

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isInvite(Lcom/narvii/model/User;)Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    const v2, 0x7f12086b

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    goto :goto_3

    .line 251
    .line 252
    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    .line 257
    const v1, 0x7f12085b

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .line 262
    .line 263
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 264
    move-result-object v0

    .line 265
    const/4 v1, -0x1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    .line 275
    const v1, 0x7f080954

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    .line 280
    .line 281
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    :cond_6
    :goto_3
    return-void
.end method
