.class Lcom/narvii/chat/ChatListFragment$7;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment;->openMiniProfile(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1829
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 1833
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "Source"

    const-string v0, "Chat Thread"

    .line 1835
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1838
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->access$2200(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1840
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    .line 1841
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 1842
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
