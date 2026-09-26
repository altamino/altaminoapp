.class Lcom/narvii/master/CommunityDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field final synthetic val$isJoinRequestType:Z


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/master/CommunityDetailFragment$5;->val$isJoinRequestType:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p3, p0, Lcom/narvii/master/CommunityDetailFragment$5;->val$isJoinRequestType:Z

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p1}, Lcom/narvii/master/CommunityDetailFragment;->I(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->E(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$5;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 31
    .line 32
    iget-object p2, p1, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 33
    .line 34
    const-string p3, "Join Community Button"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    :cond_1
    return-void
.end method
