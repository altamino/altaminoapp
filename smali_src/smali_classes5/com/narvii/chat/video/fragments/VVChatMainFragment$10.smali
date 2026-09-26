.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$finishActivity:Z

.field final synthetic val$isPresenter:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$withFinish:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;ZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$finishActivity:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$withFinish:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$isPresenter:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->q(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->r(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$finishActivity:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$withFinish:Z

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 54
    .line 55
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$isPresenter:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->y(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->q(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    .line 69
    move-result v0

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->r(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->y(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->q(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    .line 92
    move-result v0

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->r(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 104
    return-void
.end method
