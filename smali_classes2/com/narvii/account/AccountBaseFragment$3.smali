.class Lcom/narvii/account/AccountBaseFragment$3;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountBaseFragment;->emailAlreadyRegisted(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountBaseFragment;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment$3;->this$0:Lcom/narvii/account/AccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/AccountBaseFragment$3;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 351
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 352
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment$3;->val$email:Ljava/lang/String;

    const-string v0, "email"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment$3;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    return-void
.end method
