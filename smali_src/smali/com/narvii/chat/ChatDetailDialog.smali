.class public Lcom/narvii/chat/ChatDetailDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# instance fields
.field btnClose:Landroid/view/View;

.field tvChatMessage:Landroid/widget/TextView;

.field tvChatUserNickname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a02ad

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatMessage:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0a00fc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0a0321

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->btnClose:Landroid/view/View;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/chat/ChatDetailDialog$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatDetailDialog$1;-><init>(Lcom/narvii/chat/ChatDetailDialog;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d01a8

    return v0
.end method

.method public setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatMessage:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/ChatDetailDialog;->tvChatUserNickname:Landroid/widget/TextView;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void
.end method
