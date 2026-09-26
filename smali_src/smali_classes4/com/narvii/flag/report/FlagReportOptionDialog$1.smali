.class Lcom/narvii/flag/report/FlagReportOptionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

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
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->N(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->q(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->y(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->v(Lcom/narvii/flag/report/FlagReportOptionDialog;I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->z(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 41
    .line 42
    .line 43
    const v1, 0x7f12079e

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->A(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 52
    .line 53
    .line 54
    const v1, 0x7f12079f

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->A(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->B(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    const v1, 0x7f12078a

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    const v1, 0x7f120789

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    const/16 v0, 0xce

    .line 113
    .line 114
    const/16 v1, 0x7d

    .line 115
    const/4 v2, 0x0

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 119
    move-result v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 123
    const/4 v0, 0x4

    .line 124
    const/4 v1, 0x0

    .line 125
    .line 126
    .line 127
    const v2, 0x104000a

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 134
    :cond_2
    :goto_1
    return-void
.end method
