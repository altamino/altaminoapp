.class public Lcom/narvii/chat/ChatDetailDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "ChatDetailDialog.java"


# instance fields
.field btnClose:Landroid/view/View;

.field tvChatMessage:Landroid/widget/TextView;

.field tvChatUserNickname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0901f6

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatMessage:Landroid/widget/TextView;

    const p1, 0x7f090095

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    const p1, 0x7f09025e

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->btnClose:Landroid/view/View;

    .line 26
    iget-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->btnClose:Landroid/view/View;

    new-instance v0, Lcom/narvii/chat/ChatDetailDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatDetailDialog$1;-><init>(Lcom/narvii/chat/ChatDetailDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b018a

    return v0
.end method

.method public setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatMessage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
