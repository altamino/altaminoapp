.class public Lcom/narvii/account/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAccountForegroundColor()I
    .locals 2

    .line 86
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const v0, 0x7f06001c

    goto :goto_0

    :cond_0
    const v0, 0x7f06001b

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getAccountProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 91
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const v0, 0x7f080784

    goto :goto_0

    :cond_0
    const v0, 0x7f080783

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isEmailAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 3

    .line 72
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0, p2}, Lcom/narvii/account/AccountUtils;->isValidPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isPhoneAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0, p2}, Lcom/narvii/account/AccountUtils;->isValidPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public isValidPassword(Ljava/lang/String;)Z
    .locals 1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public validateEmail(Landroid/widget/TextView;)Z
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 36
    iget-object v0, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 41
    iget-object v0, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    const v1, 0x7f0f0041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public validatePassword(Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 4

    .line 49
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 52
    iget-object p2, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    const v0, 0x7f0f004c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_0
    const-string v1, " "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 63
    invoke-virtual {p2}, Landroid/widget/TextView;->requestFocus()Z

    .line 64
    iget-object p1, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    const v0, 0x7f0f004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 58
    iget-object p2, p0, Lcom/narvii/account/AccountUtils;->context:Landroid/content/Context;

    const v0, 0x7f0f0042

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v2
.end method
