.class Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

.field final synthetic val$dlg:Lcom/narvii/onlinestatus/UserDialog;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$dlg:Lcom/narvii/onlinestatus/UserDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$user:Lcom/narvii/model/User;

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
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$dlg:Lcom/narvii/onlinestatus/UserDialog;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Source"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p2, 0x1

    .line 31
    .line 32
    if-ne p1, p2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$user:Lcom/narvii/model/User;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->startChat(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p2, 0x3

    .line 44
    .line 45
    if-ne p1, p2, :cond_3

    .line 46
    .line 47
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;->val$user:Lcom/narvii/model/User;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

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
