.class Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->n(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 15
    .line 16
    const-string v0, "api"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;->this$1:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->n(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 34
    :cond_0
    return-void
.end method
