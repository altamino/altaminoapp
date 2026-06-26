.class final Lcom/narvii/chat/util/ChatHelper$leaveChat$1;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $thread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->this$0:Lcom/narvii/chat/util/ChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 562
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->$thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 563
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->this$0:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatHelper;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0c50

    .line 564
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    const/4 v1, 0x0

    .line 565
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 566
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->this$0:Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$1;->$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->transOrganizer(Lcom/narvii/model/ChatThread;)V

    :goto_0
    return-void
.end method
