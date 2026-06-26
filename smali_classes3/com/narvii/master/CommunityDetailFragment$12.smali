.class Lcom/narvii/master/CommunityDetailFragment$12;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;

.field final synthetic val$info:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$info:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1731
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1732
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->access$402(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1733
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$info:Landroid/content/Intent;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/master/CommunityDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    :cond_0
    return-void
.end method
