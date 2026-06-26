.class Lcom/narvii/poweruser/AdvancedOptionDialog$18;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->banUser(Lcom/narvii/model/User;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/RequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/RequestDialog;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$18;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$18;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 969
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$18;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/RequestDialog;->getRequestEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 970
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$18;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
