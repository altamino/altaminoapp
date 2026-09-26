.class Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 6
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showKeyboard"

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 8
    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    const-string v0, "statistics"

    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v0, "Picks a chat bubble"

    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Picks a chat bubble Total"

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    iget v0, v0, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Customized"

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Chat"

    const-string v1, "Current Chat"

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Store Product Detail Page"

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
