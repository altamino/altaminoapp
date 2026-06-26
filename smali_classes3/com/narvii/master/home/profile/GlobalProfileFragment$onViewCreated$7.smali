.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 401
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getFollowNotificationHelper$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/user/follow/FollowNotificationHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    :goto_1
    invoke-static {v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "AlertIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
