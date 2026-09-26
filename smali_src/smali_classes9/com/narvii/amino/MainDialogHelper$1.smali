.class Lcom/narvii/amino/MainDialogHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper$1;->this$0:Lcom/narvii/amino/MainDialogHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/amino/MainDialogHelper$1;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 17
    return-void
.end method
