.class Lcom/narvii/master/DownloadAcmDialog$1;
.super Ljava/lang/Object;
.source "DownloadAcmDialog.java"

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

    .line 26
    iput-object p1, p0, Lcom/narvii/master/DownloadAcmDialog$1;->this$0:Lcom/narvii/master/DownloadAcmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/narvii/master/DownloadAcmDialog$1;->this$0:Lcom/narvii/master/DownloadAcmDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
