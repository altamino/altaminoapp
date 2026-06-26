.class Lcom/narvii/account/SignUpAddProfileFragment$5;
.super Lcom/narvii/util/text/LinkTouchSpan;
.source "SignUpAddProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Lcom/narvii/util/text/LinkTouchSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 223
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const-string v0, "PrivacyPolicy"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 224
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://privacy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
