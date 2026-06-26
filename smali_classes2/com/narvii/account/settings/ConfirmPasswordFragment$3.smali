.class Lcom/narvii/account/settings/ConfirmPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$3;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    :try_start_0
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$3;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-static {p1}, Lcom/narvii/util/AccountWebUtils;->openForgetPasswordPage(Lcom/narvii/app/NVContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
