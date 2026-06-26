.class public Lcom/narvii/chat/ChatWelcomeItem;
.super Landroid/widget/LinearLayout;
.source "ChatWelcomeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;
    }
.end annotation


# static fields
.field private static final CHARACTER_BEGIN_INDEX:I = 0xfa

.field private static final CHARACTER_INCREASE_STEP:I = 0xc

.field private static final WELCOME_MESSAGE_LINE_LIMIT:I = 0xa


# instance fields
.field private chatMessage:Lcom/narvii/model/ChatMessage;

.field private isExpanded:Z

.field listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090b5b

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    return-void
.end method

.method public setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 64
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 65
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_0
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, " "

    .line 67
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    new-instance v4, Lcom/narvii/util/CenterAlignImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0802ee

    invoke-direct {v4, v5, v6}, Lcom/narvii/util/CenterAlignImageSpan;-><init>(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 72
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v6, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v5, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 76
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v5, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    :cond_2
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    iget-object v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    .line 82
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    sub-int v6, v3, v1

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v13

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 86
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_6

    iget-boolean v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->isExpanded:Z

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 90
    :cond_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0f62

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0xfa

    move v7, v6

    const/16 v6, 0xfa

    .line 93
    :goto_1
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const v9, -0xb56f1e

    if-ge v6, v8, :cond_5

    .line 95
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 96
    invoke-virtual {v11, v12, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v9}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 98
    new-instance v7, Landroid/text/StaticLayout;

    iget-object v8, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v8

    sub-int v16, v8, v1

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v13, v7

    move-object v14, v3

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 100
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-lt v7, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v6, 0xc

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    goto :goto_1

    :cond_5
    move v6, v7

    .line 105
    :goto_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    add-int/lit8 v6, v6, -0xc

    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v6, v1

    invoke-virtual {v11, v12, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v9}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 108
    new-instance v1, Lcom/narvii/chat/ChatWelcomeItem$1;

    invoke-direct {v1, v0}, Lcom/narvii/chat/ChatWelcomeItem$1;-><init>(Lcom/narvii/chat/ChatWelcomeItem;)V

    .line 113
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 108
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 114
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 115
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 87
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public setExpandedClickListener(Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem;->listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

    return-void
.end method
