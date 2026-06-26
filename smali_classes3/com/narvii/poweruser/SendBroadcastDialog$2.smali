.class Lcom/narvii/poweruser/SendBroadcastDialog$2;
.super Ljava/lang/Object;
.source "SendBroadcastDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastDialog;

.field final synthetic val$submit:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog$2;->this$0:Lcom/narvii/poweruser/SendBroadcastDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/SendBroadcastDialog$2;->val$submit:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog$2;->val$submit:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
