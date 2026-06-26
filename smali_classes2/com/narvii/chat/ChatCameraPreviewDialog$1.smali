.class final Lcom/narvii/chat/ChatCameraPreviewDialog$1;
.super Ljava/lang/Object;
.source "ChatCameraPreviewDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatCameraPreviewDialog;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    const-string v0, "StartButton"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 37
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->getPreviewFinishCallback()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-static {v0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$isCameraMute$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-static {v1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$isCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$1;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->dismiss()V

    return-void
.end method
