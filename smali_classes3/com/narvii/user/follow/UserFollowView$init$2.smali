.class final Lcom/narvii/user/follow/UserFollowView$init$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserFollowView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->init(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserFollowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserFollowView.kt\ncom/narvii/user/follow/UserFollowView$init$2\n*L\n1#1,303:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/user/follow/UserFollowView$init$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v0}, Lcom/narvii/user/follow/UserFollowView;->access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iput p1, v0, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 68
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    .line 69
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v1}, Lcom/narvii/user/follow/UserFollowView;->access$getPushNotificationHelper$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v2, "it.nickname"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scenario_subscribe_user"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;-><init>(Lcom/narvii/user/follow/UserFollowView$init$2;Z)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
