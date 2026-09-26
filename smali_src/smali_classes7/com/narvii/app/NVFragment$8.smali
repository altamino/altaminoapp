.class Lcom/narvii/app/NVFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

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
    iget-object v0, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/NVFragment;->j(Lcom/narvii/app/NVFragment;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/app/NVFragment;->k(Lcom/narvii/app/NVFragment;)Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/app/NVFragment;->m(Lcom/narvii/app/NVFragment;Landroid/content/Intent;)V

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

    .line 32
    .line 33
    const-string v2, "account"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/app/NVFragment$8;->this$0:Lcom/narvii/app/NVFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1, v0}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 49
    return-void
.end method
