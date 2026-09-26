.class public Lcom/narvii/monetization/sticker/post/StickerPostItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private updateCountDownView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    .line 23
    rsub-int/lit8 v2, v2, 0x14

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 50
    return-void
.end method

.method private updateIconView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->icon:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 12
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateCountDownView()V

    .line 4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public changeFromSticker(Lcom/narvii/model/Sticker;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    .line 32
    return-void
.end method

.method public changeIcon(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 14
    .line 15
    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput-object p1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    .line 27
    return-void
.end method

.method public getNameEdit()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    return-object v0
.end method

.method public getStickerPost()Lcom/narvii/monetization/sticker/post/StickerPost;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 32
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a04bd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a03c3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->countDown:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 46
    .line 47
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 48
    .line 49
    const/16 v3, 0x14

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    aput-object v2, v1, v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a06d5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->icon:Lcom/narvii/widget/NVImageView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a06e4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayout:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0e77

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->thumbnail:Landroid/view/View;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayout:Landroid/view/View;

    .line 90
    .line 91
    new-instance v1, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateCountDownView()V

    .line 4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setIconLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayoutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStickerPost(Lcom/narvii/monetization/sticker/post/StickerPost;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->stickerPost:Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->name:Landroid/widget/EditText;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->updateIconView()V

    .line 16
    return-void
.end method

.method public showThumbnail(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem;->thumbnail:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 6
    return-void
.end method
