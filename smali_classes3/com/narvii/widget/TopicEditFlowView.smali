.class public Lcom/narvii/widget/TopicEditFlowView;
.super Lcom/narvii/widget/TagEditFlowView;
.source "TopicEditFlowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;
    }
.end annotation


# static fields
.field public static final MAX_TOPIC_COUNT:I = 0xa

.field public static final MAX_TOPIC_LENGTH:I = 0x1e


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagEditFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected advancedEditText(Landroid/widget/EditText;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;

    .line 37
    new-instance v1, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;

    const/16 v2, 0x1e

    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;-><init>(Lcom/narvii/widget/TopicEditFlowView;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method protected editTextLayoutId()I
    .locals 1

    .line 27
    sget v0, Lcom/narvii/lib/R$layout;->add_story_topic_edit_text:I

    return v0
.end method

.method protected getEditTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, -0x10000

    goto :goto_0

    :cond_0
    const p1, -0xb5b5b6

    :goto_0
    return p1
.end method

.method protected getMaxChars()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getMaxTagCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected tagView(Lcom/narvii/widget/TagEditFlowView$Tag;)Landroid/view/View;
    .locals 3

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->story_topic_view_small:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
