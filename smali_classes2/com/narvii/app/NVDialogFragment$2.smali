.class Lcom/narvii/app/NVDialogFragment$2;
.super Lcom/narvii/app/NVDialog;
.source "NVDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/narvii/app/NVDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVDialogFragment;Landroid/content/Context;I)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/narvii/app/NVDialogFragment$2;->this$0:Lcom/narvii/app/NVDialogFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment$2;->this$0:Lcom/narvii/app/NVDialogFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
