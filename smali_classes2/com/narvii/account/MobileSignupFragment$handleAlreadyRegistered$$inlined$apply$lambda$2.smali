.class final Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "MobileSignupFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment;->handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $errorMsg$inlined:Ljava/lang/String;

.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;->this$0:Lcom/narvii/account/MobileSignupFragment;

    iput-object p3, p0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;->$errorMsg$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    const-string v0, "Login"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 112
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/MobileSignupFragment;->access$toLoginPage(Lcom/narvii/account/MobileSignupFragment;)V

    return-void
.end method
