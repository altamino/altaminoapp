.class public Lcom/narvii/chat/ChatInfoItem;
.super Landroid/widget/LinearLayout;
.source "ChatInfoItem.java"


# instance fields
.field helper:Lcom/narvii/chat/util/ChatHelper;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/ChatInfoItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090b5b

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    return-void
.end method

.method public setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/chat/ChatInfoItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v1, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
