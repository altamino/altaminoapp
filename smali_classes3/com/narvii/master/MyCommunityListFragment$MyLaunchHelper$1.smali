.class Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;
.super Ljava/lang/Object;
.source "MyCommunityListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    iget-boolean v0, p1, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    iget-object p1, p1, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    invoke-static {p1}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->access$001(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
