.class Lcom/narvii/amino/MainDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MainDialogFragment.java"


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

    .line 74
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {p1}, Lcom/narvii/amino/MainDialogFragment;->access$000(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment$1;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {p1}, Lcom/narvii/amino/MainDialogFragment;->access$100(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
