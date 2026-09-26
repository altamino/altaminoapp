.class public final Landroidx/core/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnReceiveContentListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;,
        Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


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

.method private static b(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ClipData$Item;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;->a(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static c(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    const-string v1, "ReceiveContent"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "onReceive: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->g()I

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    return-object p2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->c()Landroid/content/ClipData;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->e()I

    .line 45
    move-result p2

    .line 46
    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 58
    const/4 v2, 0x0

    .line 59
    move v3, v2

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 63
    move-result v4

    .line 64
    .line 65
    if-ge v2, v4, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v4, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener;->b(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v4}, Landroidx/core/widget/TextViewOnReceiveContentListener;->c(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 81
    const/4 v3, 0x1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 86
    move-result v5

    .line 87
    .line 88
    const-string v6, "\n"

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 95
    move-result v5

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 99
    .line 100
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const/4 p1, 0x0

    .line 103
    return-object p1
.end method
