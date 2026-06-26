.class Lcom/narvii/app/NVFragment$10;
.super Ljava/lang/Object;
.source "NVFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v0}, Lcom/narvii/app/NVFragment;->access$000(Lcom/narvii/app/NVFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v0}, Lcom/narvii/app/NVFragment;->access$400(Lcom/narvii/app/NVFragment;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1107
    :cond_1
    iget-object v1, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/narvii/app/NVFragment;->access$402(Lcom/narvii/app/NVFragment;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1109
    iget-object v1, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1110
    iget-object v2, p0, Lcom/narvii/app/NVFragment$10;->this$0:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method
