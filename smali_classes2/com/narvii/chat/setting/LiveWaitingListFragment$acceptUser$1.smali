.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment;->acceptUser(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/chat/rtc/RtcService$WaitingListCallback<",
        "Lcom/narvii/chat/signalling/SignallingChannel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 2

    .line 389
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getWaitListAdapter(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->$user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string/jumbo v1, "user.uid"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->removeRequestedId(Ljava/lang/String;)V

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->$user:Lcom/narvii/model/User;

    iget p1, p1, Lcom/narvii/model/User;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 392
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_5

    .line 393
    :cond_3
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 394
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    const p1, 0x7f0f005e

    goto :goto_1

    :cond_4
    const p1, 0x7f0f005f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0193

    .line 395
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$1;

    invoke-direct {v0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f119f

    .line 398
    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$2;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f09098b

    .line 401
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$3;

    invoke-direct {v0, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$3;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    :cond_5
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->call(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method
