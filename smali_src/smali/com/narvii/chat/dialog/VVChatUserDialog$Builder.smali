.class public final Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method


# virtual methods
.method public final build()Lcom/narvii/chat/dialog/VVChatUserDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->updateViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getListener()Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 17
    return-object v0
.end method

.method public final clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1
    .param p1    # Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V

    .line 11
    return-object p0
.end method

.method public final configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setThreadId$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setChannelType$p(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p3}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/model/ChatThread;)V

    .line 16
    return-object p0
.end method

.method public final curUserIsGuest(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setCurUserIsGuest$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    .line 6
    return-object p0
.end method

.method public final getDialog()Lcom/narvii/chat/dialog/VVChatUserDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-object v0
.end method

.method public final muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setMuteVideoWhenBlockUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    .line 6
    return-object p0
.end method

.method public final needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->dialog:Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$setNeedVideoFrameWhenFlag$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V

    .line 6
    return-object p0
.end method
