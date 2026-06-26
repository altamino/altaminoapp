.class Lcom/narvii/chat/ChatListFragment$Adapter$3;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1469
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$2100(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "Source"

    const-string v0, "Chat Thread"

    .line 1471
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1474
    instance-of p1, p2, Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/narvii/model/User;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    iget-object p2, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 1475
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->access$2200(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 1477
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-static {p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$2300(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 1478
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 1479
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method
