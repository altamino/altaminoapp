.class Lcom/narvii/poweruser/AdvancedOptionDialog$12;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f1200b1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 31
    .line 32
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f120cb3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f120cb2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 54
    const/4 v0, 0x0

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    const v2, 0x7f1201e2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$12;)V

    .line 67
    .line 68
    .line 69
    const v1, 0x104000a

    .line 70
    const/4 v2, 0x4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 77
    :cond_1
    return-void
.end method
