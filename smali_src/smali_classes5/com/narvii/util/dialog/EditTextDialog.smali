.class public Lcom/narvii/util/dialog/EditTextDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    .line 7
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->updateRightButton(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateRightButton(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getTrimEditText()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->enableView(Landroid/widget/TextView;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->disableView(Landroid/widget/TextView;)V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method disableView(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 14
    return-void
.end method

.method public disallowEditTextEmpty(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getEditTextView()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/util/dialog/EditTextDialog$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/dialog/EditTextDialog$1;-><init>(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/EditTextDialog;->updateRightButton(Landroid/widget/TextView;)V

    .line 16
    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 13
    return-void
.end method
