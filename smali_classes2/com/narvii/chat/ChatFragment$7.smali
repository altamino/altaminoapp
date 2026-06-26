.class Lcom/narvii/chat/ChatFragment$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFragment;->onChatCloseClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 564
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Close"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 565
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 566
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onCloseClicked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    :cond_0
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 568
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 569
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$7;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
