.class public Lcom/narvii/widget/TopicEditFlowView;
.super Lcom/narvii/widget/TagEditFlowView;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagEditFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected advancedEditText(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;

    .line 4
    .line 5
    new-instance v1, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;-><init>(Lcom/narvii/widget/TopicEditFlowView;I)V

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 17
    return-void
.end method

.method protected editTextLayoutId()I
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->story_topic_view_small:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-object v0
.end method
