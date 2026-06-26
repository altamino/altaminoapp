.class final Lcom/narvii/chat/ChatGoLivePickerDialog$2;
.super Ljava/lang/Object;
.source "ChatGoLivePickerDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "screeningRoom"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "videoChat"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "voiceChat"

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    const-string v1, "SelectButton"

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {v1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "requireApproval"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "chatType"

    .line 74
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 76
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->getLiveModePickCallback()Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {v1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;->onLiveModePicked(IZ)V

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$2;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    return-void
.end method
