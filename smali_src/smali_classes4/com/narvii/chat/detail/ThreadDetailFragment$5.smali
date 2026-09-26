.class Lcom/narvii/chat/detail/ThreadDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    .line 3
    if-eq p1, p2, :cond_5

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    const/4 p2, 0x4

    .line 11
    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    const/4 p2, 0x7

    .line 14
    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-lez p1, :cond_6

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->deleteMember(Lcom/narvii/model/User;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    if-nez p1, :cond_4

    .line 91
    return-void

    .line 92
    .line 93
    :cond_4
    const-string p2, "Source"

    .line 94
    .line 95
    const-string v0, "Chat Thread More Info"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {p2, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    const-string p2, "chatInvite"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$5;->val$u:Lcom/narvii/model/User;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 130
    :cond_6
    :goto_0
    return-void
.end method
