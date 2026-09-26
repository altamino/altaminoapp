.class Lcom/narvii/app/NVActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$10;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity$10;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->k(Lcom/narvii/app/NVActivity;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity$10;->this$0:Lcom/narvii/app/NVActivity;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/narvii/app/NVActivity;->p(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/app/NVActivity$10;->this$0:Lcom/narvii/app/NVActivity;

    .line 22
    .line 23
    const-string v2, "account"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/app/NVActivity$10;->this$0:Lcom/narvii/app/NVActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1, v0}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    .line 39
    return-void
.end method
