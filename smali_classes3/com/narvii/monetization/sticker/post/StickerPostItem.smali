.class public Lcom/narvii/monetization/sticker/post/StickerPostItem;
.super Landroid/widget/LinearLayout;
.source "StickerPostItem.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final NAME_MAX_LENGTH:I = 0x14


# instance fields
.field countDown:Landroid/widget/TextView;

.field icon:Lcom/narvii/widget/NVImageView;

.field iconLayout:Landroid/view/View;

.field iconLayoutClickListener:Landroid/view/View$OnClickListener;

.field name:Landroid/widget/EditText;

.field stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

.field thumbnail:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateCountDownView()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateIconView()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateCountDownView()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public changeFromSticker(Lcom/narvii/model/Sticker;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    const/4 v1, 0x0

    .line 88
    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    return-void
.end method

.method public changeIcon(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    const/4 p1, 0x0

    .line 98
    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    .line 99
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    return-void
.end method

.method public getNameEdit()Landroid/widget/EditText;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    return-object v0
.end method

.method public getStickerPost()Lcom/narvii/monetization/sticker/post/StickerPost;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0903c6

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    const v0, 0x7f0902f2

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f090562

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->icon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09056b

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayout:Landroid/view/View;

    const v0, 0x7f090b72

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->thumbnail:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayout:Landroid/view/View;

    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateCountDownView()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayoutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStickerPost(Lcom/narvii/monetization/sticker/post/StickerPost;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    return-void
.end method

.method public showThumbnail(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->thumbnail:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method
