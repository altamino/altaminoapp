.class Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;
.super Ljava/lang/Object;
.source "ConfirmPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/settings/ConfirmPasswordFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ConfirmPasswordFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ConfirmPasswordFragment$1;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-static {p1}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->access$000(Lcom/narvii/account/settings/ConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ConfirmPasswordFragment$1;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    const-string v0, "api"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 103
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ConfirmPasswordFragment$1;

    iget-object v0, v0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-static {v0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->access$000(Lcom/narvii/account/settings/ConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
