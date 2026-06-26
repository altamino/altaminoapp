.class Lcom/narvii/poweruser/AdvancedOptionDialog$5;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 567
    new-instance p1, Lcom/narvii/poweruser/AdvanceUserUtils;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 568
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$5;)V

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;->showStrikeWarningDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method
