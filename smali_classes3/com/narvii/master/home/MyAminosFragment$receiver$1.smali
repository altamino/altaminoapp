.class public final Lcom/narvii/master/home/MyAminosFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MyAminosFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/MyAminosFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/MyAminosFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/MyAminosFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    invoke-static {p1}, Lcom/narvii/master/home/MyAminosFragment;->access$updateTabLayout(Lcom/narvii/master/home/MyAminosFragment;)V

    .line 49
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    :cond_0
    return-void
.end method
