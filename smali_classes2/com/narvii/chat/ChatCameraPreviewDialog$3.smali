.class final Lcom/narvii/chat/ChatCameraPreviewDialog$3;
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

    iput-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$3;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$3;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$isCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$setCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V

    .line 46
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog$3;->this$0:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$isCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->access$updateFlip(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V

    return-void
.end method
