.class public Lcom/narvii/user/title/AddUserTitleFlowLayout;
.super Lcom/narvii/user/title/UserTitleFlowView;
.source "AddUserTitleFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;,
        Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;
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

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/narvii/user/title/UserTitleFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 73
    new-instance p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->inflater:Landroid/view/LayoutInflater;

    .line 117
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addEditText()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->removeSelectedTagView()V

    return-void
.end method

.method private addEditText()V
    .locals 3

    const v0, 0x7f09006b

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 148
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 149
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 150
    new-instance v1, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 183
    new-instance v1, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;

    invoke-direct {v1, p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f080071

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onEditextAddListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;->onEdittextAdded()V

    :cond_0
    return-void
.end method

.method private removeEditText()V
    .locals 2

    const v0, 0x7f09006b

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 220
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeSelectedTagView()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 259
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 263
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagRemovedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;->onTagRemoved(Lcom/narvii/model/api/UserTitle;)V

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    if-eqz v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 273
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    .line 274
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addEditText()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateEditTextImeOption(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    const/16 v1, 0x13

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


# virtual methods
.method public addUserTitle(Lcom/narvii/model/api/UserTitle;)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b06ce

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090b9a

    .line 230
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    iget-object v3, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v3

    .line 233
    invoke-static {v3}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const v3, -0xb5b5b6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    invoke-virtual {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    if-eqz p1, :cond_2

    .line 240
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    .line 242
    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateEditTextImeOption(Landroid/widget/EditText;)V

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->removeEditText()V

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

    if-eqz p1, :cond_0

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserTitle;

    .line 319
    invoke-virtual {p0, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    const v0, 0x7f09006b

    .line 311
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public setOnEditextAddListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onEditextAddListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$OnEditextAddListener;

    return-void
.end method

.method public setOnSelectedChangedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    return-void
.end method

.method public setOnTagRemovedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagRemovedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;

    return-void
.end method

.method public setTagEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    return-void
.end method

.method public setUserTitleColorEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    return-void
.end method

.method public setUserTitleTransformer(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    return-void
.end method

.method public updateUserTitle(Lcom/narvii/model/api/UserTitle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserTitle;

    .line 287
    iget-object v1, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    .line 295
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090b9a

    .line 296
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 297
    iget-object v3, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v3

    .line 299
    invoke-static {v3}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    const v3, -0xb5b5b6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleFlowView;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v3, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->onSelectedChangedListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;

    if-eqz p1, :cond_5

    .line 305
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;->onChanged(Ljava/util/List;)V

    :cond_5
    return-void
.end method
