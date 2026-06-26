.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

.field final synthetic val$dlg:Lcom/narvii/onlinestatus/UserDialog;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    iput-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$user:Lcom/narvii/model/User;

    iput-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$dlg:Lcom/narvii/onlinestatus/UserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 496
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->access$200(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$dlg:Lcom/narvii/onlinestatus/UserDialog;

    iget-object p2, p2, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->access$300(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 501
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->startChat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 503
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->access$400(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 504
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
