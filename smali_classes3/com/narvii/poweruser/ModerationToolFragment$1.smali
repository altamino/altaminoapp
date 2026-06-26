.class Lcom/narvii/poweruser/ModerationToolFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ModerationToolFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/ModerationToolFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ModerationToolFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$1;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$1;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/ModerationToolFragment;->access$000(Lcom/narvii/poweruser/ModerationToolFragment;)V

    :cond_0
    return-void
.end method
