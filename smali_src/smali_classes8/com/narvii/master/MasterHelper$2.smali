.class Lcom/narvii/master/MasterHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterHelper$2;->this$0:Lcom/narvii/master/MasterHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MasterHelper$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/MasterHelper$2;->val$nativeUrl:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MasterHelper$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    const-string v0, "GotIt"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/MasterHelper$2;->this$0:Lcom/narvii/master/MasterHelper;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/master/MasterHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/master/MasterHelper$2;->val$nativeUrl:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "Standalone App"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/PackageUtils;->openGooglePlayWithNativeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
