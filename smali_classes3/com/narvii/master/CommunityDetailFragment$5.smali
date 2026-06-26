.class Lcom/narvii/master/CommunityDetailFragment$5;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->joinCommunity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 668
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->access$402(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p2, p1, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    const-string p3, "Join Community Button"

    invoke-virtual {p1, p2, p3}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
