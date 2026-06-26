.class Lcom/narvii/chat/detail/ThreadDetailFragment$5;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->userOptions(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1462
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 1467
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 1468
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 1470
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1475
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->deleteMember(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 1478
    :cond_2
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 1479
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto :goto_0

    .line 1482
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const-string p2, "Source"

    const-string v0, "Chat Thread More Info"

    .line 1484
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1488
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "chatInvite"

    .line 1489
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz p1, :cond_6

    .line 1491
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
