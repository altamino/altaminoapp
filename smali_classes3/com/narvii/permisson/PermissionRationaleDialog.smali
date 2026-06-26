.class public Lcom/narvii/permisson/PermissionRationaleDialog;
.super Lcom/narvii/widget/ACMAlertDialog;
.source "PermissionRationaleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW:I = 0x1

.field public static isShowing:Z


# instance fields
.field private callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cancelCallback:Lcom/narvii/util/Callback;

.field private context:Landroid/content/Context;

.field public deniedInfo:Ljava/lang/String;

.field deniedPermissionHint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    .line 45
    sget p1, Lcom/narvii/lib/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->tvMessage:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->cancelCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)Lcom/narvii/util/Callback;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->cancelCallback:Lcom/narvii/util/Callback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/permisson/PermissionRationaleDialog;)Lcom/narvii/util/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->callback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)Lcom/narvii/util/Callback;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->callback:Lcom/narvii/util/Callback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/permisson/PermissionRationaleDialog;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 172
    new-instance v0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addPermissionDeniedHint(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPermissionDeniedHint(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPermissionRationale(II)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addPermissionRationale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    return-void
.end method

.method public parepageDialog()V
    .locals 8

    .line 98
    sget v0, Lcom/narvii/lib/R$string;->allow_amino_permission:I

    invoke-virtual {p0, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 99
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->rations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v7, 0x21

    invoke-virtual {v0, v6, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 107
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 108
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 115
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v2

    const/4 v2, 0x0

    .line 117
    :goto_1
    iget-object v5, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 118
    iget-object v5, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    iget-object v6, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_1

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 122
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    sget v5, Lcom/narvii/lib/R$string;->and:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->context:Landroid/content/Context;

    sget v5, Lcom/narvii/lib/R$string;->denied_hint:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    :cond_3
    sget v1, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x800003

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedPermissionHint:Ljava/util/List;

    const v1, -0x777778

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 149
    :cond_4
    sget v0, Lcom/narvii/lib/R$string;->not_now:I

    new-instance v2, Lcom/narvii/permisson/PermissionRationaleDialog$3;

    invoke-direct {v2, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$3;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 157
    sget v0, Lcom/narvii/lib/R$string;->app_setttings:I

    new-instance v1, Lcom/narvii/permisson/PermissionRationaleDialog$4;

    invoke-direct {v1, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$4;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_4

    .line 132
    :cond_5
    :goto_3
    sget v0, Lcom/narvii/lib/R$string;->deny:I

    new-instance v2, Lcom/narvii/permisson/PermissionRationaleDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$1;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 140
    sget v0, Lcom/narvii/lib/R$string;->allow:I

    new-instance v1, Lcom/narvii/permisson/PermissionRationaleDialog$2;

    invoke-direct {v1, p0}, Lcom/narvii/permisson/PermissionRationaleDialog$2;-><init>(Lcom/narvii/permisson/PermissionRationaleDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    :goto_4
    return-void
.end method

.method public setDeniedInfo(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog;->deniedInfo:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    return-void
.end method
