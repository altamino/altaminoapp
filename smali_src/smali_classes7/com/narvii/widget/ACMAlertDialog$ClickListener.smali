.class public Lcom/narvii/widget/ACMAlertDialog$ClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->this$0:Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->dismiss:Z

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->dismiss:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->this$0:Lcom/narvii/widget/ACMAlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 17
    :cond_1
    return-void
.end method
