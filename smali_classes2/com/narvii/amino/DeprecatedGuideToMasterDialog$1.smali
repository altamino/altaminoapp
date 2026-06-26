.class Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;
.super Ljava/lang/Object;
.source "DeprecatedGuideToMasterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/DeprecatedGuideToMasterDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/DeprecatedGuideToMasterDialog;


# direct methods
.method constructor <init>(Lcom/narvii/amino/DeprecatedGuideToMasterDialog;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;->this$0:Lcom/narvii/amino/DeprecatedGuideToMasterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;->this$0:Lcom/narvii/amino/DeprecatedGuideToMasterDialog;

    const-string v0, "DownloadNow"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 25
    new-instance p1, Lcom/narvii/util/PackageUtils;

    iget-object v0, p0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;->this$0:Lcom/narvii/amino/DeprecatedGuideToMasterDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;->this$0:Lcom/narvii/amino/DeprecatedGuideToMasterDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
