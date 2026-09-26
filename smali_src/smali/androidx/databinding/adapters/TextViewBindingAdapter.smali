.class public Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation build Landroidx/databinding/BindingMethods;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# static fields
.field public static final DECIMAL:I = 0x5

.field public static final INTEGER:I = 0x1

.field public static final SIGNED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextViewBindingAdapters"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v3, v0

    .line 13
    .line 14
    :goto_1
    if-eq v2, v3, :cond_2

    .line 15
    return v1

    .line 16
    .line 17
    :cond_2
    if-nez p0, :cond_3

    .line 18
    return v0

    .line 19
    .line 20
    .line 21
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eq v2, v3, :cond_4

    .line 29
    return v1

    .line 30
    :cond_4
    move v3, v0

    .line 31
    .line 32
    :goto_2
    if-ge v3, v2, :cond_6

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 36
    move-result v4

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    move-result v5

    .line 41
    .line 42
    if-eq v4, v5, :cond_5

    .line 43
    return v1

    .line 44
    .line 45
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_6
    return v0
.end method

.method public static b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .annotation build Landroidx/databinding/BindingAdapter;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p4, p3}, Landroidx/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 16
    move-object p1, v0

    .line 17
    .line 18
    :goto_0
    sget p2, Landroidx/databinding/library/baseAdapters/R$id;->textWatcher:I

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Landroidx/databinding/adapters/ListenerUtil;->a(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroid/text/TextWatcher;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    :cond_2
    return-void
.end method
