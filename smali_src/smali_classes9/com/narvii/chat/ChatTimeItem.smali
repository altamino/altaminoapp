.class public Lcom/narvii/chat/ChatTimeItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field text:Landroid/widget/TextView;

.field time:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/chat/ChatTimeItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 10
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
    iput-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->text:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->time:Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/ChatTimeItem;->text:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/ChatTimeItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/narvii/util/DateTimeFormatter;->formatChat(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/ChatTimeItem;->time:Ljava/util/Date;

    .line 22
    return-void
.end method
