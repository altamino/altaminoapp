.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ge v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x18

    .line 10
    .line 11
    if-lt v0, v1, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->G(Landroid/view/View;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper;->c(Landroid/view/View;)Landroid/app/Activity;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v0, "Can\'t handle drop: no activity: view="

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    const-string p1, "ReceiveContent"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v2

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 57
    move-result v1

    .line 58
    const/4 v3, 0x1

    .line 59
    .line 60
    if-ne v1, v3, :cond_2

    .line 61
    .line 62
    instance-of p0, p0, Landroid/widget/TextView;

    .line 63
    xor-int/2addr p0, v3

    .line 64
    return p0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 68
    move-result v1

    .line 69
    const/4 v3, 0x3

    .line 70
    .line 71
    if-ne v1, v3, :cond_4

    .line 72
    .line 73
    instance-of v1, p0, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    check-cast p0, Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    .line 81
    move-result p0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    .line 86
    move-result p0

    .line 87
    :goto_0
    return p0

    .line 88
    :cond_4
    :goto_1
    return v2
.end method

.method static b(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ge v0, v1, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->G(Landroid/view/View;)[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    .line 16
    const v0, 0x1020022

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    .line 21
    const v1, 0x1020031

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    goto :goto_2

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v3, "clipboard"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/content/ClipboardManager;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    const/4 v3, 0x1

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    .line 51
    move-result v4

    .line 52
    .line 53
    if-lez v4, :cond_3

    .line 54
    .line 55
    new-instance v4, Landroidx/core/view/ContentInfoCompat$Builder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v1, v3}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 59
    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v2, v3

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {v4, v2}, Landroidx/core/view/ContentInfoCompat$Builder;->c(I)Landroidx/core/view/ContentInfoCompat$Builder;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->a()Landroidx/core/view/ContentInfoCompat;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->j0(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 74
    :cond_3
    return v3

    .line 75
    :cond_4
    :goto_2
    return v2
.end method

.method static c(Landroid/view/View;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p0, Landroid/app/Activity;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Landroid/app/Activity;

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
