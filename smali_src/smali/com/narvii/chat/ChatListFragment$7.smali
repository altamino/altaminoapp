.class Lcom/narvii/chat/ChatListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

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
    const/4 p2, 0x2

    .line 2
    .line 3
    if-ne p1, p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    const-string p2, "Source"

    .line 17
    .line 18
    const-string v0, "Chat Thread"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/narvii/chat/ChatListFragment$7;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p2, 0x1

    .line 29
    .line 30
    if-ne p1, p2, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->Z(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x3

    .line 40
    .line 41
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$7;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$7;->val$user:Lcom/narvii/model/User;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 66
    :cond_3
    :goto_0
    return-void
.end method
