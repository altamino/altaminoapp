.class Lcom/narvii/chat/invite/ChatInviteFragment$3;
.super Ljava/lang/Object;
.source "ChatInviteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

.field final synthetic val$autoShowKeyboard:Z

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$uids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/dialog/AlertDialog;[Ljava/lang/String;Z)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$uids:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$autoShowKeyboard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SendButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 143
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$uids:[Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$autoShowKeyboard:Z

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$200(Lcom/narvii/chat/invite/ChatInviteFragment;[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
