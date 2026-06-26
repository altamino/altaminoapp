.class public final Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.INTEREST_CHANGED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.attribute.REFRESH_DISCOVER"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_1
    return-void
.end method
