.class Lcom/narvii/onlinestatus/ChooseMoodFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChooseMoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$000(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$100(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    :cond_0
    return-void
.end method
