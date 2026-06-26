.class final Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "ChatFansOnlyMaskFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFansOnlyMaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    const-string v0, "getThread()!!.author"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p1

    if-nez p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatFansOnlyMaskFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->showFansSubscriptionDialog()V

    :goto_0
    return-void
.end method
