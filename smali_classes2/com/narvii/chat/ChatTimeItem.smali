.class public Lcom/narvii/chat/ChatTimeItem;
.super Landroid/widget/LinearLayout;
.source "ChatTimeItem.java"


# instance fields
.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field text:Landroid/widget/TextView;

.field time:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatTimeItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090b5b

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->text:Landroid/widget/TextView;

    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->time:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/chat/ChatTimeItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    invoke-virtual {v1, p1}, Lcom/narvii/util/DateTimeFormatter;->formatChat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/ChatTimeItem;->time:Ljava/util/Date;

    return-void
.end method
