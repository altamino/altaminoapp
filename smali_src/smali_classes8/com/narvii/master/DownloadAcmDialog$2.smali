.class Lcom/narvii/master/DownloadAcmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/DownloadAcmDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/DownloadAcmDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/DownloadAcmDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/DownloadAcmDialog$2;->this$0:Lcom/narvii/master/DownloadAcmDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/DownloadAcmDialog$2;->this$0:Lcom/narvii/master/DownloadAcmDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->downloadAcm()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/DownloadAcmDialog$2;->this$0:Lcom/narvii/master/DownloadAcmDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 20
    return-void
.end method
