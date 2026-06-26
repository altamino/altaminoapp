.class public final Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method


# virtual methods
.method public final build()Lcom/narvii/chat/dialog/VVChatUserDialog;
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->updateViews()V

    .line 455
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getListener()Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-object v0
.end method

.method public final clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V

    return-object p0
.end method

.method public final configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setThreadId$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setChannelType$p(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V

    .line 428
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1, p3}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/model/ChatThread;)V

    return-object p0
.end method

.method public final curUserIsGuest(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setCurUserIsGuest$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    return-object p0
.end method

.method public final getDialog()Lcom/narvii/chat/dialog/VVChatUserDialog;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-object v0
.end method

.method public final muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setMuteVideoWhenBlockUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    return-object p0
.end method

.method public final needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setNeedVideoFrameWhenFlag$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    return-object p0
.end method
