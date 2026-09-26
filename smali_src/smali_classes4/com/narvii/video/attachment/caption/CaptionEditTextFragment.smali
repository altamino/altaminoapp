.class public Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# static fields
.field public static BACKGROUND:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field color:I

.field colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

.field editText:Landroid/widget/EditText;

.field frameHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->updateDoneButton()V

    .line 4
    return-void
.end method

.method private updateDoneButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    sget v0, Lcom/narvii/lib/R$string;->cancel:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 15
    .line 16
    sget v0, Lcom/narvii/mediaeditor/R$string;->done:I

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Lcom/narvii/app/NVActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->updateDoneButton()V

    .line 28
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 8
    .line 9
    const-wide/16 v0, 0x32

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public onColorSelected(IZ)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    const-string v0, "color"

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0xff

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const/16 v1, 0x14

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_text_editor:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    sget p2, Lcom/narvii/mediaeditor/R$id;->edit_text:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/EditText;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "text"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    .line 62
    sget p2, Lcom/narvii/mediaeditor/R$id;->color_picker:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 71
    .line 72
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(I)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V

    .line 81
    .line 82
    sget p2, Lcom/narvii/mediaeditor/R$id;->bg:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    check-cast p1, Landroid/widget/ImageView;

    .line 89
    .line 90
    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    check-cast p2, Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Landroid/widget/ImageView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 112
    return-void
.end method
