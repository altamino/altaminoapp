.class Lcom/narvii/app/NVActivity$12;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1805
    iget-object v0, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {v0}, Lcom/narvii/app/NVActivity;->access$400(Lcom/narvii/app/NVActivity;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/app/NVActivity;->access$402(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1811
    iget-object v1, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1812
    iget-object v2, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method
