.class Lcom/narvii/master/MyCommunityListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment;->onRefresh(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;

.field final synthetic val$outerRefreshCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$1;->val$outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/master/MyCommunityListFragment;->t(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->val$outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-void
.end method
