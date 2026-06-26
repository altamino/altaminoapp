.class Lcom/narvii/master/MasterHelper$2;
.super Ljava/lang/Object;
.source "MasterHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterHelper;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$nativeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/master/MasterHelper$2;->this$0:Lcom/narvii/master/MasterHelper;

    iput-object p2, p0, Lcom/narvii/master/MasterHelper$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/master/MasterHelper$2;->val$nativeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/narvii/master/MasterHelper$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    const-string v0, "GotIt"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 77
    iget-object p1, p0, Lcom/narvii/master/MasterHelper$2;->this$0:Lcom/narvii/master/MasterHelper;

    iget-object p1, p1, Lcom/narvii/master/MasterHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/MasterHelper$2;->val$nativeUrl:Ljava/lang/String;

    const-string v2, "Standalone App"

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/PackageUtils;->openGooglePlayWithNativeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
