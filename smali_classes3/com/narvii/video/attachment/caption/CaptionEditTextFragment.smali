.class public Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;
.super Lcom/narvii/app/NVFragment;
.source "CaptionEditTextFragment.java"

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

    .line 36
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->updateDoneButton()V

    return-void
.end method

.method private updateDoneButton()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    .line 53
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 66
    sget v0, Lcom/narvii/lib/R$string;->cancel:I

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/narvii/mediaeditor/R$string;->done:I

    new-instance v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Lcom/narvii/app/NVActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->updateDoneButton()V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 157
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    const-wide/16 v0, 0x32

    .line 160
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onColorSelected(IZ)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 96
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, ""

    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "color"

    const/4 v1, -0x1

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 47
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_text_editor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 106
    sget p2, Lcom/narvii/mediaeditor/R$id;->edit_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 108
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 110
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    sget p2, Lcom/narvii/mediaeditor/R$id;->color_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 128
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(I)V

    .line 129
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->colorRecyclerView:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-virtual {p2, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V

    .line 131
    sget p2, Lcom/narvii/mediaeditor/R$id;->bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 132
    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
