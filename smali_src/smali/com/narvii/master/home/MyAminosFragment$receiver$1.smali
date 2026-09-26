.class public final Lcom/narvii/master/home/MyAminosFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/master/home/MyAminosFragment;->access$updateTabLayout(Lcom/narvii/master/home/MyAminosFragment;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;->this$0:Lcom/narvii/master/home/MyAminosFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    .line 41
    :cond_0
    return-void
.end method
