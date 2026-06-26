.class Lcom/narvii/amino/MainDialogHelper$1;
.super Ljava/lang/Object;
.source "MainDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/MainDialogHelper;->showUpgradeDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainDialogHelper;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper$1;->this$0:Lcom/narvii/amino/MainDialogHelper;

    iput-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    new-instance p1, Lcom/narvii/util/PackageUtils;

    iget-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    return-void
.end method
