.class public final Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "com.narvii.action.INTEREST_CHANGED"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 27
    const/4 v2, 0x2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1, v0, v2, v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 31
    .line 32
    :cond_0
    const-string p1, "com.narvii.attribute.REFRESH_DISCOVER"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 54
    :cond_1
    return-void
.end method
