.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$3;->showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 529
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
