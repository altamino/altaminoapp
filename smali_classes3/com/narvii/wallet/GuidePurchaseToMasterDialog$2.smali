.class Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;
.super Ljava/lang/Object;
.source "GuidePurchaseToMasterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

.field final synthetic val$packageUtils:Lcom/narvii/util/PackageUtils;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;Lcom/narvii/util/PackageUtils;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    iput-object p2, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->val$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 54
    iget-object p1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->val$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->val$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-static {v1}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->access$000(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    iget-object v0, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->val$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 63
    .line 71
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
