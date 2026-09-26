.class Lcom/narvii/chat/invite/ChatInviteFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$uids:[Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$autoShowKeyboard:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "SendButton"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$uids:[Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$3;->val$autoShowKeyboard:Z

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2}, Lcom/narvii/chat/invite/ChatInviteFragment;->q(Lcom/narvii/chat/invite/ChatInviteFragment;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method
