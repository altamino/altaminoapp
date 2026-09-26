.class public abstract Lcom/narvii/widget/TagEditFlowView;
.super Lcom/narvii/util/layouts/NVFlowLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVActivity$DispatchTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TagEditFlowView$Tag;,
        Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;,
        Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;,
        Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;,
        Lcom/narvii/widget/TagEditFlowView$TagEditListener;,
        Lcom/narvii/widget/TagEditFlowView$TagTransformer;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/layouts/NVFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/widget/TagEditFlowView$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/narvii/widget/TagEditFlowView$1;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView;->inflater:Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    .line 41
    .line 42
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V

    .line 50
    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method private addEditText()V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->inflater:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->editTextLayoutId()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/widget/EditText;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 33
    move-result v1

    .line 34
    .line 35
    const/high16 v2, 0x90000

    .line 36
    or-int/2addr v1, v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/widget/TagEditFlowView$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$2;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/widget/TagEditFlowView$3;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$3;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/widget/TagEditFlowView$4;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/narvii/widget/TagEditFlowView$4;-><init>(Lcom/narvii/widget/TagEditFlowView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->advancedEditText(Landroid/widget/EditText;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->onEditTextAddListener:Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;->onEdittextAdded()V

    .line 96
    :cond_1
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TagEditFlowView;->tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/TagEditFlowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->removeSelectedTagView()V

    return-void
.end method

.method private removeEditText()V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_0
    return-void
.end method

.method private removeSelectedTagView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/widget/TagEditFlowView;->onTagRemovedListener:Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v1}, Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;->onTagRemoved(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getEditText()Landroid/widget/EditText;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    .line 79
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->disallowAddTag(Lcom/narvii/widget/TagEditFlowView$Tag;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->allowDuplicateTags()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->tagView(Lcom/narvii/widget/TagEditFlowView$Tag;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getEditText()Landroid/widget/EditText;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$Tag;->getTagTitle()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    const/4 p1, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->removeEditText()V

    .line 84
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public editSubmit()V
    .locals 2

    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 16
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

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxChars()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->tagEditListener:Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    if-eqz p1, :cond_5

    .line 4
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->onSaveTextBeyondLimit()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->allowSubmitText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->allowDuplicateTags()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    .line 9
    invoke-interface {v0, p1}, Lcom/narvii/widget/TagEditFlowView$TagTransformer;->transform(Ljava/lang/String;)Lcom/narvii/widget/TagEditFlowView$Tag;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditFlowView;->addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;->onChanged(Ljava/util/List;)V

    :cond_4
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    return-void
.end method

.method protected editTextLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->add_tag_default_edit:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
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

    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    return-object v0
.end method

.method public isTagFull()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public onDispatchTouchEvent()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->unSelectCurrentSelectedView()V

    .line 4
    return-void
.end method

.method public requestEditFocus()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 8
    :cond_0
    return-void
.end method

.method public requestEdittextFocus()V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->add_tag:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/widget/TagEditFlowView$5;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lcom/narvii/widget/TagEditFlowView$5;-><init>(Lcom/narvii/widget/TagEditFlowView;Landroid/widget/EditText;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    return-void
.end method

.method public setOnEditTextAddListener(Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onEditTextAddListener:Lcom/narvii/widget/TagEditFlowView$OnEditTextAddListener;

    return-void
.end method

.method public setOnSelectedChangedListener(Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onSelectedChangedListener:Lcom/narvii/widget/TagEditFlowView$OnSelectedChangedListener;

    return-void
.end method

.method public setOnTagRemovedListener(Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->onTagRemovedListener:Lcom/narvii/widget/TagEditFlowView$OnTagRemovedListener;

    return-void
.end method

.method public setTagEditListener(Lcom/narvii/widget/TagEditFlowView$TagEditListener;)V
    .locals 0

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v0

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    .line 27
    :goto_1
    if-ge v2, v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedTagList:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    goto :goto_3

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagEditFlowView;->addTag(Lcom/narvii/widget/TagEditFlowView$Tag;)V

    .line 76
    goto :goto_2

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->shouldShowEditText()Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/widget/TagEditFlowView;->addEditText()V

    .line 86
    :cond_4
    :goto_3
    return-void
.end method

.method public setTagTransformer(Lcom/narvii/widget/TagEditFlowView$TagTransformer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView;->tagTransformer:Lcom/narvii/widget/TagEditFlowView$TagTransformer;

    return-void
.end method

.method protected shouldShowEditText()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedView:Landroid/view/View;

    .line 12
    :cond_0
    return-void
.end method

.method protected updateEditTextImeOption(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView;->selectedList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/widget/TagEditFlowView;->getMaxTagCount()I

    .line 12
    move-result v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    const/4 v0, 0x6

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x5

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 23
    :cond_1
    return-void
.end method
