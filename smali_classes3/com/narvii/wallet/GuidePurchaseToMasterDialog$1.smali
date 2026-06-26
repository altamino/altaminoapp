.class Lcom/narvii/wallet/GuidePurchaseToMasterDialog$1;
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


# direct methods
.method constructor <init>(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$1;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$1;->this$0:Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
