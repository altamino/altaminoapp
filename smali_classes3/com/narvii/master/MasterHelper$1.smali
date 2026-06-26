.class Lcom/narvii/master/MasterHelper$1;
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


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/master/MasterHelper$1;->this$0:Lcom/narvii/master/MasterHelper;

    iput-object p2, p0, Lcom/narvii/master/MasterHelper$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/narvii/master/MasterHelper$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    const-string v0, "Cancel"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
