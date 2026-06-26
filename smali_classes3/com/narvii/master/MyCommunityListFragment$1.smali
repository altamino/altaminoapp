.class Lcom/narvii/master/MyCommunityListFragment$1;
.super Ljava/lang/Object;
.source "MyCommunityListFragment.java"

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

    .line 351
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$1;->val$outerRefreshCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {p1}, Lcom/narvii/master/MyCommunityListFragment;->access$200(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$1;->val$outerRefreshCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 355
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
