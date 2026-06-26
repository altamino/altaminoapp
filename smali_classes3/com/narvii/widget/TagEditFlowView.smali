.class public abstract Lcom/narvii/widget/TagEditFlowView;
.super Lcom/narvii/util/layouts/NVFlowLayout;
.source "TagEditFlowView.java"

# interfaces
.implements Lcom/narvii/app/NVActivity$DispatchTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TagEditFlowView$Tag;,
        Lcom/narvii/widget/TagEditFlowView$TagTransformer;,
        Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;,
        Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;,
        Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;,
        Lcom/narvii/widget/TagEditFlowView$TagEditListener;
    }
.end annotation


# static fields
.field public static final MAX_TAG_COUNT:I = 0x14


# instance fields
.field private editText:Landroid/widget/EditText;

.field inflater:Landroid/view/LayoutInflater;

.field private onEditTextAddListener:Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;

.field private onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

.field onTagClickListener:Landroid/view/View$OnClickListener;

.field private onTagRemovedListener:Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;

.field protected final selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final selectedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/TagEditFlowView$Tag;",
            ">;"
        }
    .end annotation
.end field

.field selectedView:Landroid/view/View;

.field private tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

.field private tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/layouts/NVFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 55
    new-instance p2, Lcom/narvii/widget/TagEditFlowView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/TagEditFlowView$1;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->inflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    .line 48
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_0

    .line 49
    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/TagEditFlowView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->removeSelectedTagView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/widget/TagEditFlowView;->tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    return-object p0
.end method

.method private addEditText()V
    .locals 3

    .line 131
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->editTextLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 136
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/widget/TagEditFlowView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$2;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 158
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/widget/TagEditFlowView$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$3;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/widget/TagEditFlowView$4;

    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$4;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->advancedEditText(Landroid/widget/EditText;)V

    .line 202
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 203
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->onEditTextAddListener:Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;->onEdittextAdded()V

    :cond_1
    return-void
.end method

.method private removeEditText()V
    .locals 2

    .line 289
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 292
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeSelectedTagView()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 102
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 106
    iget-object v2, p0, Lcom/narvii/widget/TagEditFlowView;->onTagRemovedListener:Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v2, v1}, Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;->onTagRemoved(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    if-eqz v0, :cond_2

    .line 115
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V
    .locals 3

    .line 251
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->disallowAddTag(Lcom/narvii/widget/TagEditFlowView$Tag;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->allowDuplicateTags()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->tagView(Lcom/narvii/widget/TagEditFlowView$Tag;)Landroid/view/View;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 264
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 272
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    move-result p1

    if-nez p1, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->removeEditText()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected advancedEditText(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method protected allowDuplicateTags()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowSubmitText(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected disallowAddTag(Lcom/narvii/widget/TagEditFlowView$Tag;)Z
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editSubmit()V
    .locals 2

    .line 244
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/narvii/widget/TagEditFlowView;->editSubmit(Ljava/lang/String;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method protected editSubmit(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 211
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxChars()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    if-eqz p1, :cond_5

    .line 214
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->onSaveTextBeyondLimit()V

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->allowSubmitText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 220
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->allowDuplicateTags()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    invoke-interface {v0, p1}, Lcom/narvii/widget/TagEditFlowView$TagTransformer;->transform(Ljava/lang/String;)Lcom/narvii/widget/TagEditFlowView$Tag;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 226
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    .line 227
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    if-eqz p1, :cond_4

    .line 228
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;->onChanged(Ljava/util/List;)V

    :cond_4
    const/4 p1, 0x0

    .line 233
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    return-void
.end method

.method protected editTextLayoutId()I
    .locals 1

    .line 299
    sget v0, Lcom/narvii/lib/R$layout;->add_tag_default_edit:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 126
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method protected getEditTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, -0x10000

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected getMaxChars()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected getMaxTagCount()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/widget/TagEditFlowView$Tag;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    return-object v0
.end method

.method public isTagFull()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDispatchTouchEvent()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->unSelectCurrentSelectedView()V

    return-void
.end method

.method public requestEditFocus()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public requestEdittextFocus()V
    .locals 2

    .line 380
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 382
    new-instance v1, Lcom/narvii/widget/TagEditFlowView$5;

    invoke-direct {v1, p0, v0}, Lcom/narvii/widget/TagEditFlowView$5;-><init>(Lcom/narvii/widget/TagEditFlowView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOnEditTextAddListener(Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onEditTextAddListener:Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;

    return-void
.end method

.method public setOnSelectedChangedListener(Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    return-void
.end method

.method public setOnTagRemovedListener(Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onTagRemovedListener:Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;

    return-void
.end method

.method public setTagEditListener(Lcom/narvii/widget/TagEditFlowView$TagEditListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/widget/TagEditFlowView$Tag;",
            ">;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 371
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 372
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    goto :goto_2

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 375
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    :cond_4
    :goto_3
    return-void
.end method

.method public setTagTransformer(Lcom/narvii/widget/TagEditFlowView$TagTransformer;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    return-void
.end method

.method protected shouldShowEditText()Z
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected tagListTotalCharCountMayChanged()V
    .locals 0

    return-void
.end method

.method protected abstract tagView(Lcom/narvii/widget/TagEditFlowView$Tag;)Landroid/view/View;
.end method

.method public unSelectCurrentSelectedView()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateEditTextImeOption(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1
    return-void
.end method
