.class Lcom/narvii/flag/report/FlagReportOptionDialog$3;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 398
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$000(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;)V

    .line 400
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$102(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$300(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$202(Lcom/narvii/flag/report/FlagReportOptionDialog;I)I

    .line 402
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$400(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    .line 403
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    const v1, 0x7f0f06f5

    invoke-static {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$500(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    const v1, 0x7f0f06f6

    invoke-static {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$500(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$600(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    goto :goto_1

    .line 404
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 405
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f06e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f06e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/16 v1, 0xce

    const/16 v2, 0x7d

    .line 407
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const v0, 0x104000a

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 409
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method
