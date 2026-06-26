.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "ThreadMemberListFragment.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->userOptions(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 241
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 242
    new-instance v0, Lcom/narvii/chat/util/ThreadNotification;

    invoke-direct {v0}, Lcom/narvii/chat/util/ThreadNotification;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$000(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->threadId:Ljava/lang/String;

    .line 244
    iput p2, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    .line 245
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    iput-object p2, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    const-string/jumbo p2, "update"

    .line 246
    iput-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 247
    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 248
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto/16 :goto_0

    .line 251
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 253
    new-instance p2, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 254
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$000(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    new-instance v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 263
    :cond_2
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const-string p2, "Source"

    const-string v0, "Chat Thread More Info"

    .line 270
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 274
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "chatInvite"

    .line 275
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz p1, :cond_6

    .line 277
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
