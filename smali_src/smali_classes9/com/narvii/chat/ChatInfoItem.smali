.class public Lcom/narvii/chat/ChatInfoItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field helper:Lcom/narvii/chat/util/ChatHelper;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/chat/ChatInfoItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 11
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e51

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatInfoItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    return-void
.end method
