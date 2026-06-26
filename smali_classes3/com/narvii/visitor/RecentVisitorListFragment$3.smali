.class Lcom/narvii/visitor/RecentVisitorListFragment$3;
.super Ljava/lang/Object;
.source "RecentVisitorListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/RecentVisitorListFragment;->updateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/RecentVisitorListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$3;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$3;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-object p1, p1, Lcom/narvii/visitor/RecentVisitorListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$3;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "DoItButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 235
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$3;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/narvii/master/home/follow/GlobalFollowingListFragment;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/narvii/user/list/FollowingListFragment;

    :goto_0
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$3;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
