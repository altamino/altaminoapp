.class public Lcom/narvii/user/title/AddUserTitleFlowLayout;
.super Lcom/narvii/user/title/UserTitleFlowView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;
    }
.end annotation


# static fields
.field public static final MAX_TAG_COUNT:I = 0x14


# instance fields
.field public diabledEditClickListener:Landroid/view/View$OnClickListener;

.field inflater:Landroid/view/LayoutInflater;

.field onEditextAddListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;

.field onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

.field onTagClickListener:Landroid/view/View$OnClickListener;

.field onTagRemovedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;

.field selectedTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field selectedView:Landroid/view/View;

.field tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

.field userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

.field userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/user/title/UserTitleFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->inflater:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addEditText()V

    .line 31
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->removeSelectedTagView()V

    return-void
.end method

.method private addEditText()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a00a4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->inflater:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d0046

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 25
    move-result v1

    .line 26
    .line 27
    const/high16 v2, 0x90000

    .line 28
    or-int/2addr v1, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;Landroid/widget/EditText;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;Landroid/widget/EditText;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    .line 52
    .line 53
    const v1, 0x7f080078

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onEditextAddListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;->onEdittextAdded()V

    .line 71
    :cond_0
    return-void
.end method

.method private removeEditText()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a00a4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_0
    return-void
.end method

.method private removeSelectedTagView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagRemovedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;->onTagRemoved(Lcom/narvii/model/api/UserTitle;)V

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v0

    .line 65
    .line 66
    const/16 v1, 0x14

    .line 67
    .line 68
    if-ge v0, v1, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addEditText()V

    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method private updateEditTextImeOption(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x13

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    const/4 v0, 0x6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x5

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method public addUserTitle(Lcom/narvii/model/api/UserTitle;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0d0783

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v2, 0x7f0a0e9e

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 47
    move-result v3

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    const/4 v3, -0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    const v3, -0xb5b5b6

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 91
    .line 92
    .line 93
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v2}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    const/4 p1, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    move-result p1

    .line 118
    .line 119
    if-ne p1, v1, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->removeEditText()V

    .line 123
    :cond_4
    return-void
.end method

.method public addUserTitleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/api/UserTitle;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a00a4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/EditText;

    .line 10
    return-object v0
.end method

.method public setOnEditextAddListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onEditextAddListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;

    return-void
.end method

.method public setOnSelectedChangedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    return-void
.end method

.method public setOnTagRemovedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagRemovedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;

    return-void
.end method

.method public setTagEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    return-void
.end method

.method public setUserTitleColorEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    return-void
.end method

.method public setUserTitleTransformer(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    return-void
.end method

.method public updateUserTitle(Lcom/narvii/model/api/UserTitle;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    if-lt v0, v1, :cond_3

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    const v2, 0x7f0a0e9e

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 67
    move-result v3

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    const/4 v3, -0x1

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_4
    const v3, -0xb5b5b6

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 110
    :cond_5
    return-void
.end method
