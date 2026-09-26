.class Lcom/narvii/chat/video/floating/FloatingManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/ui/floating/FloatingClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/floating/FloatingManager;->createThreadWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/floating/FloatingManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/floating/FloatingManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCloseClicked()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    .line 6
    return-void
.end method

.method public onTotalClicked()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->a(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->a(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    .line 24
    .line 25
    const-string v2, "__communityId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->a(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "id"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->a(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-string v2, "thread"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    const-string v1, "Source"

    .line 65
    .line 66
    const-string v2, "Text Floating"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    const/high16 v1, 0x10000000

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Lcom/narvii/chat/video/floating/FloatingManager$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager$2;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    .line 87
    return-void
.end method
