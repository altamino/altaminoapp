.class Lcom/narvii/amino/MainActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainActivity;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$5;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/MainActivity$5;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$5;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-virtual {p1}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    :cond_0
    return-void
.end method
