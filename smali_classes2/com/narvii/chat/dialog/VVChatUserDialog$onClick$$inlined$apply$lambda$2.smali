.class final Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$2;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$2;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$showLeaveChatConfirmDialog(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    return-void
.end method
