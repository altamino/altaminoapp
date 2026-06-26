.class final Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "MobileSignupFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "VerifyNumber"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 51
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/MobileSignupFragment;->access$verifyNumber(Lcom/narvii/account/MobileSignupFragment;)V

    return-void
.end method
