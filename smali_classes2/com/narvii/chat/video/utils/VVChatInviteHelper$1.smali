.class Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;
.super Ljava/lang/Object;
.source "VVChatInviteHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatInviteHelper;->showJoinPrivateChatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;->this$0:Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
