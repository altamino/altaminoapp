.class public Lcom/narvii/util/dialog/EditTextDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "EditTextDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->updateRightButton(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateRightButton(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getTrimEditText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->disableView(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method disableView(Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public disallowEditTextEmpty(Landroid/widget/TextView;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/dialog/EditTextDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/dialog/EditTextDialog$1;-><init>(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->updateRightButton(Landroid/widget/TextView;)V

    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
