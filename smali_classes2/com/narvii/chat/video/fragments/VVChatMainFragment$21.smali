.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->showVvChatInviteDialog(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1485
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1486
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$21;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->inviteDialog:Lcom/narvii/util/dialog/AlertDialog;

    const-string v0, "RejectButton"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
