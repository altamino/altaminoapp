.class Lcom/narvii/amino/MainDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainDialogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/MainDialogFragment;->r(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/amino/MainDialogFragment;->q(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-wide/16 v0, 0x64

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 20
    :cond_0
    return-void
.end method
