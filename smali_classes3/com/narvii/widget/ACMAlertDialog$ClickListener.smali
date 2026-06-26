.class public Lcom/narvii/widget/ACMAlertDialog$ClickListener;
.super Ljava/lang/Object;
.source "ACMAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ACMAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickListener"
.end annotation


# instance fields
.field dismiss:Z

.field l:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->this$0:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->dismiss:Z

    .line 215
    iput-object p2, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

    .line 216
    iput-boolean p3, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->dismiss:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->dismiss:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->this$0:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
