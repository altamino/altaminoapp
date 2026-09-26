.class Landroidx/core/app/ShareCompat$Api16Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


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

.method static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static b(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 7
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "android.intent.extra.TEXT"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "android.intent.extra.HTML_TEXT"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Landroid/content/ClipData;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    filled-new-array {v3}, [Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    new-instance v4, Landroid/content/ClipData$Item;

    .line 25
    const/4 v5, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    check-cast v5, Landroid/net/Uri;

    .line 32
    const/4 v6, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v0, v1, v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v6, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x1

    .line 44
    move v3, v1

    .line 45
    .line 46
    :goto_0
    if-ge v3, v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    check-cast v4, Landroid/net/Uri;

    .line 53
    .line 54
    new-instance v5, Landroid/content/ClipData$Item;

    .line 55
    .line 56
    .line 57
    invoke-direct {v5, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static c(Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 8
    move-result v0

    .line 9
    .line 10
    and-int/lit8 v0, v0, -0x2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    return-void
.end method
