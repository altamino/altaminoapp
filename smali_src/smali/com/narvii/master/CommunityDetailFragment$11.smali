.class Lcom/narvii/master/CommunityDetailFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$11;->val$info:Landroid/content/Intent;

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
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->E(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 22
    const/4 p2, 0x1

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/master/CommunityDetailFragment$11;->val$info:Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/narvii/master/CommunityDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 28
    :cond_0
    return-void
.end method
