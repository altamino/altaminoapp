.class Lcom/narvii/onlinestatus/UserDialog$4;
.super Ljava/lang/Object;
.source "UserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/UserDialog;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$4;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog$4;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f010e

    .line 204
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
