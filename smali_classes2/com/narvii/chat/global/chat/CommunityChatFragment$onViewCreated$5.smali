.class final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "CommunityChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 223
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;

    sget v1, Lcom/narvii/amino/R$id;->setting:I

    invoke-virtual {p1, v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TintButton;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->setMyChatManagePopUp(Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    .line 247
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getMyChatManagePopUp()Lcom/narvii/chat/thread/MyChatManagePopUp;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatManagePopUp;->show()V

    :cond_0
    return-void
.end method
