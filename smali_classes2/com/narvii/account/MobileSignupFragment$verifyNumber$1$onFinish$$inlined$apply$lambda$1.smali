.class final Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "MobileSignupFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 74
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 75
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/MobileSignupFragment;->access$getAuthType(Lcom/narvii/account/MobileSignupFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object v1, v1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    new-instance v2, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;-><init>(Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
