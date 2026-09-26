.class Lcom/narvii/chat/ChatListFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$600(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    const-string p2, "Source"

    .line 23
    .line 24
    const-string v0, "Chat Thread"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/narvii/chat/ChatListFragment$Adapter$3;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    instance-of p1, p2, Lcom/narvii/model/User;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    check-cast p2, Lcom/narvii/model/User;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 46
    .line 47
    iget-object p2, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->Z(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 p2, 0x3

    .line 57
    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    .line 60
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$700(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$3;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 83
    :cond_4
    :goto_1
    return-void
.end method
