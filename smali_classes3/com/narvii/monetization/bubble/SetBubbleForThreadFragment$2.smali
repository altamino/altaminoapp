.class Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;
.super Ljava/lang/Object;
.source "SetBubbleForThreadFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->onThreadPicked(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "showKeyboard"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
