.class final Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveChatRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 356
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getRtc()Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
