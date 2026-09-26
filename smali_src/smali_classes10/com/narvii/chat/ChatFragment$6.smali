.class Lcom/narvii/chat/ChatFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Close"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/chat/ChatFragment;->menuClosePopupWindow:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/chat/ChatFragment;->vvChatMainFragment:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onCloseClicked()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->getLogObject()Lcom/narvii/model/NVObject;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 50
    const/4 v1, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 71
    :cond_1
    return-void
.end method
