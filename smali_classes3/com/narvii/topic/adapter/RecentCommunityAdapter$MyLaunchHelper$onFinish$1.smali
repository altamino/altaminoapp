.class final Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;
.super Ljava/lang/Object;
.source "RecentCommunityAdapter.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    sget-object p1, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    iget-object v0, v0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    invoke-static {p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->access$onFinish$s-465807059(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    .line 218
    iget-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    iget-object p1, p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$onFinish$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
