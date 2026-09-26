.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;,
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V
    .locals 0
    .param p1    # Landroidx/emoji2/text/MetadataRepo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/emoji2/text/EmojiCompat$SpanFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 10
    .line 11
    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 14
    return-void
.end method

.method private a(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    .locals 1
    .param p1    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->a(Landroidx/emoji2/text/EmojiMetadata;)Landroidx/emoji2/text/EmojiSpan;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, p3, p4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 12
    return-void
.end method

.method private static b(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->g(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/emoji2/text/EmojiProcessor;->f(II)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    return v0

    .line 24
    .line 25
    :cond_1
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    .line 32
    .line 33
    if-eqz v1, :cond_6

    .line 34
    array-length v2, v1

    .line 35
    .line 36
    if-lez v2, :cond_6

    .line 37
    array-length v2, v1

    .line 38
    move v3, v0

    .line 39
    .line 40
    :goto_0
    if-ge v3, v2, :cond_6

    .line 41
    .line 42
    aget-object v4, v1, v3

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 46
    move-result v5

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 50
    move-result v4

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    if-eq v5, p1, :cond_4

    .line 55
    .line 56
    :cond_2
    if-nez p2, :cond_3

    .line 57
    .line 58
    if-eq v4, p1, :cond_4

    .line 59
    .line 60
    :cond_3
    if-le p1, v5, :cond_5

    .line 61
    .line 62
    if-ge p1, v4, :cond_5

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    .line 69
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_6
    return v0
.end method

.method static c(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 5
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    if-ltz p2, :cond_7

    .line 10
    .line 11
    if-gez p3, :cond_1

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->f(II)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    return v0

    .line 29
    .line 30
    :cond_2
    if-eqz p4, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->a(Ljava/lang/CharSequence;II)I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result p3

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v2, p3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->b(Ljava/lang/CharSequence;II)I

    .line 46
    move-result p3

    .line 47
    const/4 p4, -0x1

    .line 48
    .line 49
    if-eq p2, p4, :cond_3

    .line 50
    .line 51
    if-ne p3, p4, :cond_5

    .line 52
    :cond_3
    return v0

    .line 53
    :cond_4
    sub-int/2addr v1, p2

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result p2

    .line 58
    add-int/2addr v2, p3

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 62
    move-result p3

    .line 63
    .line 64
    .line 65
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    .line 66
    move-result p3

    .line 67
    .line 68
    :cond_5
    const-class p4, Landroidx/emoji2/text/EmojiSpan;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2, p3, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 72
    move-result-object p4

    .line 73
    .line 74
    check-cast p4, [Landroidx/emoji2/text/EmojiSpan;

    .line 75
    .line 76
    if-eqz p4, :cond_7

    .line 77
    array-length v1, p4

    .line 78
    .line 79
    if-lez v1, :cond_7

    .line 80
    array-length v1, p4

    .line 81
    move v2, v0

    .line 82
    .line 83
    :goto_0
    if-ge v2, v1, :cond_6

    .line 84
    .line 85
    aget-object v3, p4, v2

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 89
    move-result v4

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 93
    move-result v3

    .line 94
    .line 95
    .line 96
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 97
    move-result p2

    .line 98
    .line 99
    .line 100
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 101
    move-result p3

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_6
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 108
    move-result p2

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 112
    move-result p4

    .line 113
    .line 114
    .line 115
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result p3

    .line 117
    .line 118
    .line 119
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 123
    .line 124
    .line 125
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 126
    const/4 p0, 0x1

    .line 127
    return p0

    .line 128
    :cond_7
    :goto_1
    return v0
.end method

.method static d(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 v0, 0x43

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x70

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/EmojiProcessor;->b(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->b(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 26
    return v2

    .line 27
    :cond_2
    :goto_1
    return v1
.end method

.method private e(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->h()S

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->a(Ljava/lang/CharSequence;III)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4, p1}, Landroidx/emoji2/text/EmojiMetadata;->k(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->d()I

    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x2

    .line 25
    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method private static f(II)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(Landroid/view/KeyEvent;)Z
    .locals 0
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method


# virtual methods
.method h(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 10
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/emoji2/text/SpannableBuilder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->a()V

    .line 11
    .line 12
    :cond_0
    const-class v1, Landroidx/emoji2/text/EmojiSpan;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    :try_start_0
    instance-of v2, p1, Landroid/text/Spannable;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    instance-of v2, p1, Landroid/text/Spanned;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    move-object v2, p1

    .line 25
    .line 26
    check-cast v2, Landroid/text/Spanned;

    .line 27
    .line 28
    add-int/lit8 v3, p2, -0x1

    .line 29
    .line 30
    add-int/lit8 v4, p3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3, v4, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 34
    move-result v2

    .line 35
    .line 36
    if-gt v2, p3, :cond_2

    .line 37
    .line 38
    new-instance v2, Landroid/text/SpannableString;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    move-object v2, p1

    .line 49
    .line 50
    check-cast v2, Landroid/text/Spannable;

    .line 51
    :goto_1
    const/4 v3, 0x0

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    check-cast v4, [Landroidx/emoji2/text/EmojiSpan;

    .line 60
    .line 61
    if-eqz v4, :cond_5

    .line 62
    array-length v5, v4

    .line 63
    .line 64
    if-lez v5, :cond_5

    .line 65
    array-length v5, v4

    .line 66
    move v6, v3

    .line 67
    .line 68
    :goto_2
    if-ge v6, v5, :cond_5

    .line 69
    .line 70
    aget-object v7, v4, v6

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 74
    move-result v8

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 78
    move-result v9

    .line 79
    .line 80
    if-eq v8, p3, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-static {v9, p3}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result p3

    .line 92
    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_5
    if-eq p2, p3, :cond_16

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 100
    move-result v4

    .line 101
    .line 102
    if-lt p2, v4, :cond_6

    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    .line 107
    :cond_6
    const v4, 0x7fffffff

    .line 108
    .line 109
    if-eq p4, v4, :cond_7

    .line 110
    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    .line 114
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 115
    move-result v4

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    .line 122
    array-length v1, v1

    .line 123
    sub-int/2addr p4, v1

    .line 124
    .line 125
    :cond_7
    new-instance v1, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    .line 126
    .line 127
    iget-object v4, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroidx/emoji2/text/MetadataRepo;->f()Landroidx/emoji2/text/MetadataRepo$Node;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    iget-boolean v5, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    .line 134
    .line 135
    iget-object v6, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v4, v5, v6}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 142
    move-result v4

    .line 143
    move v5, v4

    .line 144
    move v4, v3

    .line 145
    move-object v3, v2

    .line 146
    :cond_8
    :goto_3
    move v2, p2

    .line 147
    .line 148
    :cond_9
    :goto_4
    if-ge p2, p3, :cond_10

    .line 149
    .line 150
    if-ge v4, p4, :cond_10

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->a(I)I

    .line 154
    move-result v6

    .line 155
    const/4 v7, 0x1

    .line 156
    .line 157
    if-eq v6, v7, :cond_e

    .line 158
    const/4 v7, 0x2

    .line 159
    .line 160
    if-eq v6, v7, :cond_d

    .line 161
    const/4 v7, 0x3

    .line 162
    .line 163
    if-eq v6, v7, :cond_a

    .line 164
    goto :goto_4

    .line 165
    .line 166
    :cond_a
    if-nez p5, :cond_b

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->c()Landroidx/emoji2/text/EmojiMetadata;

    .line 170
    move-result-object v6

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1, v2, p2, v6}, Landroidx/emoji2/text/EmojiProcessor;->e(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    .line 174
    move-result v6

    .line 175
    .line 176
    if-nez v6, :cond_8

    .line 177
    .line 178
    :cond_b
    if-nez v3, :cond_c

    .line 179
    .line 180
    new-instance v3, Landroid/text/SpannableString;

    .line 181
    .line 182
    .line 183
    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->c()Landroidx/emoji2/text/EmojiMetadata;

    .line 187
    move-result-object v6

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v3, v6, v2, p2}, Landroidx/emoji2/text/EmojiProcessor;->a(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    .line 191
    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    goto :goto_3

    .line 194
    .line 195
    .line 196
    :cond_d
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 197
    move-result v6

    .line 198
    add-int/2addr p2, v6

    .line 199
    .line 200
    if-ge p2, p3, :cond_9

    .line 201
    .line 202
    .line 203
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 204
    move-result v5

    .line 205
    goto :goto_4

    .line 206
    .line 207
    .line 208
    :cond_e
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 209
    move-result p2

    .line 210
    .line 211
    .line 212
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    .line 213
    move-result p2

    .line 214
    add-int/2addr v2, p2

    .line 215
    .line 216
    if-ge v2, p3, :cond_f

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 220
    move-result p2

    .line 221
    move v5, p2

    .line 222
    :cond_f
    move p2, v2

    .line 223
    goto :goto_4

    .line 224
    .line 225
    .line 226
    :cond_10
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->e()Z

    .line 227
    move-result p3

    .line 228
    .line 229
    if-eqz p3, :cond_13

    .line 230
    .line 231
    if-ge v4, p4, :cond_13

    .line 232
    .line 233
    if-nez p5, :cond_11

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->b()Landroidx/emoji2/text/EmojiMetadata;

    .line 237
    move-result-object p3

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/emoji2/text/EmojiProcessor;->e(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    .line 241
    move-result p3

    .line 242
    .line 243
    if-nez p3, :cond_13

    .line 244
    .line 245
    :cond_11
    if-nez v3, :cond_12

    .line 246
    .line 247
    new-instance v3, Landroid/text/SpannableString;

    .line 248
    .line 249
    .line 250
    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    :cond_12
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->b()Landroidx/emoji2/text/EmojiMetadata;

    .line 254
    move-result-object p3

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, v3, p3, v2, p2}, Landroidx/emoji2/text/EmojiProcessor;->a(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .line 259
    :cond_13
    if-nez v3, :cond_14

    .line 260
    move-object v3, p1

    .line 261
    .line 262
    :cond_14
    if-eqz v0, :cond_15

    .line 263
    .line 264
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->d()V

    .line 268
    :cond_15
    return-object v3

    .line 269
    .line 270
    :cond_16
    :goto_5
    if-eqz v0, :cond_17

    .line 271
    move-object p2, p1

    .line 272
    .line 273
    check-cast p2, Landroidx/emoji2/text/SpannableBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroidx/emoji2/text/SpannableBuilder;->d()V

    .line 277
    :cond_17
    return-object p1

    .line 278
    .line 279
    :goto_6
    if-eqz v0, :cond_18

    .line 280
    .line 281
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->d()V

    .line 285
    :cond_18
    throw p2
.end method
