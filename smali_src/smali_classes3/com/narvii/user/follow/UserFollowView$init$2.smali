.class final Lcom/narvii/user/follow/UserFollowView$init$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Boolean;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/UserFollowView$init$2;->invoke$lambda$1$lambda$0(Lcom/narvii/user/follow/UserFollowView;)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    const v0, 0x7f12045d

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/user/follow/UserFollowView$init$2;->invoke(Z)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 2
    invoke-static {v0}, Lcom/narvii/user/follow/UserFollowView;->access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 3
    iput p1, v0, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    .line 5
    invoke-static {v1}, Lcom/narvii/user/follow/UserFollowView;->access$getPushNotificationHelper$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scenario_subscribe_user"

    invoke-virtual {p1, v2, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    new-instance p1, Lcom/narvii/user/follow/d;

    invoke-direct {p1, v1}, Lcom/narvii/user/follow/d;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
