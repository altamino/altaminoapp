.class public Lcom/narvii/util/text/NVText;
.super Landroid/text/SpannableStringBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/text/NVText$URLWithTitle;,
        Lcom/narvii/util/text/NVText$TypefaceMarkers;,
        Lcom/narvii/util/text/NVText$LineSpan;,
        Lcom/narvii/util/text/NVText$TagSpan;,
        Lcom/narvii/util/text/NVText$ClickableTagSpan;
    }
.end annotation


# static fields
.field private static FMI:Landroid/graphics/Paint$FontMetricsInt;

.field protected static final SPAN_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

.field protected static final SPAN_BOLD:Landroid/text/style/StyleSpan;

.field protected static final SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

.field protected static final SPAN_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

.field protected static final SPAN_DARK_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

.field protected static final SPAN_DARK_COLOR:Landroid/text/style/ForegroundColorSpan;

.field protected static final SPAN_DARK_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

.field private static final TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TYPEFACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public addPaddingForBoldMode:Z

.field protected isDarkTheme:Z

.field protected spanColor:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_BOLD:Landroid/text/style/StyleSpan;

    .line 9
    .line 10
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 11
    .line 12
    .line 13
    const v1, -0xbaa97e

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    .line 19
    .line 20
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 21
    .line 22
    .line 23
    const v1, -0xf49a02

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 29
    .line 30
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 31
    .line 32
    .line 33
    const v1, -0x5f3502

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 37
    .line 38
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    .line 39
    .line 40
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 41
    const/4 v1, -0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 45
    .line 46
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR:Landroid/text/style/ForegroundColorSpan;

    .line 47
    .line 48
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 52
    .line 53
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 54
    .line 55
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 56
    .line 57
    .line 58
    const v1, -0x77000001

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 62
    .line 63
    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    .line 64
    .line 65
    const-string v0, "\\[([^\\[\\]]+)\\|\\s*(.+?)\\s*\\]"

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sput-object v0, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, "^((?:\\[[BCIUS]+\\])+).*$"

    .line 74
    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    sput-object v0, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    .line 83
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 87
    .line 88
    sput-object v0, Lcom/narvii/util/text/NVText;->FMI:Landroid/graphics/Paint$FontMetricsInt;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    sget-object p1, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V
    .locals 5

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static bridge synthetic a()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/text/NVText;->FMI:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method private markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V
    .locals 2

    const/16 v0, 0x21

    if-nez p5, :cond_0

    .line 5
    new-instance p3, Lcom/narvii/util/text/NVText$TagSpan;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/narvii/util/text/NVText$TagSpan;-><init>(Lcom/narvii/util/text/NVText;Lcom/narvii/util/text/a;)V

    .line 6
    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/narvii/util/text/NVText$ClickableTagSpan;

    invoke-direct {v1, p0, p4, p3, p5}, Lcom/narvii/util/text/NVText$ClickableTagSpan;-><init>(Lcom/narvii/util/text/NVText;ILjava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 8
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private markTag(Lcom/linkedin/urls/a;Lcom/narvii/util/text/OnTagClickListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->c()Lcom/linkedin/urls/a$a;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/a$a;->URL:Lcom/linkedin/urls/a$a;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/linkedin/urls/a;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/linkedin/urls/a;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->c()Lcom/linkedin/urls/a$a;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/a$a;->HASHTAG:Lcom/linkedin/urls/a$a;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/linkedin/urls/a;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/linkedin/urls/a;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    :cond_1
    return-void
.end method

.method private markTags(Ljava/util/List;ILcom/narvii/util/text/OnTagClickListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkedin/urls/a;",
            ">;I",
            "Lcom/narvii/util/text/OnTagClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/linkedin/urls/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/linkedin/urls/a;->b()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/linkedin/urls/a;->a()I

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/linkedin/urls/a;->d()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    move-object v1, p0

    .line 34
    move v5, p2

    .line 35
    move-object v6, p3

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public static removeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/text/IMGUtils;->removeIMGs(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/util/text/NVText;->removeTitleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/text/NVText;->removeTypefaceMarkers(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static removeTitleTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x5b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_8

    .line 17
    .line 18
    const/16 v0, 0x7c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eq v0, v1, :cond_8

    .line 25
    .line 26
    const/16 v0, 0x5d

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eq v0, v1, :cond_8

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move-object v2, v1

    .line 41
    move-object v3, v2

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_5

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Lcom/linkedin/urls/detection/f;

    .line 52
    .line 53
    sget-object v4, Lcom/linkedin/urls/detection/g;->Default:Lcom/linkedin/urls/detection/g;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, p0, v4}, Lcom/linkedin/urls/detection/f;-><init>(Ljava/lang/String;Lcom/linkedin/urls/detection/g;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/f;->c()Ljava/util/List;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    :cond_2
    new-instance v4, Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v1}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>(Lcom/narvii/util/text/b;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText$URLWithTitle;->set(Ljava/util/regex/Matcher;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v6

    .line 77
    .line 78
    if-eqz v6, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    check-cast v6, Lcom/linkedin/urls/a;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v6}, Lcom/narvii/util/text/NVText$URLWithTitle;->match(Lcom/linkedin/urls/a;)Z

    .line 88
    move-result v6

    .line 89
    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_5
    if-nez v2, :cond_6

    .line 104
    return-object p0

    .line 105
    .line 106
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result p0

    .line 114
    .line 115
    add-int/lit8 p0, p0, -0x1

    .line 116
    .line 117
    :goto_1
    if-ltz p0, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    check-cast v1, Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 124
    .line 125
    iget v3, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 126
    .line 127
    iget v4, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 128
    .line 129
    iget-object v1, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    add-int/lit8 p0, p0, -0x1

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    :cond_8
    return-object p0
.end method

.method public static removeTypefaceMarkers(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x5b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x5d

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eq v2, v1, :cond_5

    .line 25
    .line 26
    sget-object v1, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    new-instance v3, Lcom/linkedin/urls/a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 47
    move-result v5

    .line 48
    const/4 v6, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    sget-object v7, Lcom/linkedin/urls/a$a;->CASHTAG:Lcom/linkedin/urls/a$a;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    if-eqz v2, :cond_5

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result p0

    .line 80
    const/4 v3, 0x1

    .line 81
    sub-int/2addr p0, v3

    .line 82
    .line 83
    :goto_1
    if-ltz p0, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    check-cast v4, Lcom/linkedin/urls/a;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/linkedin/urls/a;->b()I

    .line 93
    move-result v5

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/linkedin/urls/a;->a()I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/linkedin/urls/a;->d()Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    .line 104
    move-result v4

    .line 105
    .line 106
    if-ge v4, v3, :cond_3

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    add-int/2addr v4, v5

    .line 109
    add-int/2addr v4, v3

    .line 110
    .line 111
    const-string v6, ""

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    :goto_2
    add-int/lit8 p0, p0, -0x1

    .line 117
    goto :goto_1

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    :cond_5
    return-object p0
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    const/16 v3, 0x25

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x3

    .line 18
    .line 19
    if-ge v2, v0, :cond_2

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 25
    move-result v3

    .line 26
    .line 27
    add-int/lit8 v4, v3, -0x31

    .line 28
    .line 29
    if-ltz v4, :cond_1

    .line 30
    array-length v5, p1

    .line 31
    .line 32
    if-ge v4, v5, :cond_1

    .line 33
    .line 34
    add-int/lit8 v5, v1, 0x2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 38
    move-result v5

    .line 39
    .line 40
    const/16 v6, 0x24

    .line 41
    .line 42
    if-ne v5, v6, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 46
    move-result v2

    .line 47
    .line 48
    const/16 v5, 0x73

    .line 49
    .line 50
    if-ne v2, v5, :cond_1

    .line 51
    .line 52
    aget-object v2, p1, v4

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_0
    :goto_1
    add-int/lit8 v3, v1, 0x4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 68
    move-result v3

    .line 69
    add-int/2addr v1, v3

    .line 70
    .line 71
    add-int/lit8 v0, v0, -0x4

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 75
    move-result v2

    .line 76
    add-int/2addr v0, v2

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v4, "format arg %"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    add-int/lit8 v3, v3, -0x30

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, " not found: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 122
    :cond_3
    return-void
.end method

.method public markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    .line 5
    move-result v0

    .line 6
    .line 7
    const-string v1, "[Guidelines]"

    .line 8
    .line 9
    const-string v2, "Community Guidelines"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    const-string v1, "[guidelines]"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    .line 23
    const-string v1, "[TOS]"

    .line 24
    .line 25
    const-string v2, "Terms of Service"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 29
    move-result p1

    .line 30
    add-int/2addr v0, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/util/text/NVText;->markTypefaceMarkers()I

    .line 34
    move-result p1

    .line 35
    add-int/2addr v0, p1

    .line 36
    return v0
.end method

.method public markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/linkedin/urls/detection/f;

    .line 7
    .line 8
    sget-object v2, Lcom/linkedin/urls/detection/g;->Default:Lcom/linkedin/urls/detection/g;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lcom/linkedin/urls/detection/f;-><init>(Ljava/lang/String;Lcom/linkedin/urls/detection/g;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/f;->c()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz p2, :cond_7

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result p2

    .line 22
    .line 23
    new-array v2, p2, [Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 24
    .line 25
    sget-object v3, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    move-result-object v0

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    new-instance v5, Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 41
    const/4 v7, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v7}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>(Lcom/narvii/util/text/b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v0}, Lcom/narvii/util/text/NVText$URLWithTitle;->set(Ljava/util/regex/Matcher;)V

    .line 48
    move v7, v3

    .line 49
    .line 50
    :goto_0
    if-ge v7, p2, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v8

    .line 55
    .line 56
    check-cast v8, Lcom/linkedin/urls/a;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v8}, Lcom/narvii/util/text/NVText$URLWithTitle;->match(Lcom/linkedin/urls/a;)Z

    .line 60
    move-result v8

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    aput-object v5, v2, v7

    .line 65
    move v4, v6

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    if-eqz v4, :cond_7

    .line 71
    .line 72
    new-instance v0, Ljava/util/HashSet;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    sub-int/2addr p2, v6

    .line 77
    move v4, v3

    .line 78
    .line 79
    :goto_1
    if-ltz p2, :cond_6

    .line 80
    .line 81
    aget-object v5, v2, p2

    .line 82
    .line 83
    if-nez v5, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    check-cast v5, Lcom/linkedin/urls/a;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/linkedin/urls/a;->b()I

    .line 93
    move-result v6

    .line 94
    .line 95
    if-lt v6, v3, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/linkedin/urls/a;->a()I

    .line 99
    move-result v6

    .line 100
    .line 101
    if-gt v6, v4, :cond_3

    .line 102
    goto :goto_2

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-direct {p0, v5, p1}, Lcom/narvii/util/text/NVText;->markTag(Lcom/linkedin/urls/a;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 110
    move-result v6

    .line 111
    .line 112
    if-nez v6, :cond_5

    .line 113
    .line 114
    iget v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 115
    .line 116
    iget v4, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 117
    .line 118
    iget-object v6, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    iget v8, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 124
    .line 125
    iget-object v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 129
    move-result v3

    .line 130
    .line 131
    add-int v9, v8, v3

    .line 132
    .line 133
    iget-object v10, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->url:Ljava/lang/String;

    .line 134
    const/4 v11, 0x5

    .line 135
    move-object v7, p0

    .line 136
    move-object v12, p1

    .line 137
    .line 138
    .line 139
    invoke-direct/range {v7 .. v12}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 140
    .line 141
    iget v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 142
    .line 143
    iget v4, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    :cond_5
    :goto_2
    add-int/lit8 p2, p2, -0x1

    .line 149
    goto :goto_1

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    move-result p1

    .line 154
    return p1

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object p2

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    check-cast v0, Lcom/linkedin/urls/a;

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v0, p1}, Lcom/narvii/util/text/NVText;->markTag(Lcom/linkedin/urls/a;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 174
    goto :goto_3

    .line 175
    .line 176
    .line 177
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 178
    move-result p1

    .line 179
    return p1
.end method

.method public markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    .line 5
    move-result v0

    .line 6
    .line 7
    const-string v1, "[Guidelines]"

    .line 8
    .line 9
    const-string v2, "Community Guidelines"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    const-string v1, "[guidelines]"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    .line 23
    const-string v1, "[TOS]"

    .line 24
    .line 25
    const-string v2, "Terms of Service"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 29
    move-result p1

    .line 30
    add-int/2addr v0, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/util/text/NVText;->markTypefaceMarkers()I

    .line 34
    move-result p1

    .line 35
    add-int/2addr v0, p1

    .line 36
    return v0
.end method

.method public markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result p1

    return p1
.end method

.method public markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 6

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 6
    new-instance v4, Lcom/linkedin/urls/a;

    sget-object v5, Lcom/linkedin/urls/a$a;->URL:Lcom/linkedin/urls/a$a;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v3

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 9
    invoke-virtual {p0, v2, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 12
    new-instance v4, Lcom/linkedin/urls/a;

    sget-object v5, Lcom/linkedin/urls/a$a;->URL:Lcom/linkedin/urls/a$a;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    .line 14
    invoke-direct {p0, v1, p1, p3}, Lcom/narvii/util/text/NVText;->markTags(Ljava/util/List;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public markTypefaceMarkers()I
    .locals 12

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/util/text/NVText$TypefaceMarkers;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/narvii/util/text/NVText$TypefaceMarkers;-><init>(Ljava/util/regex/Matcher;)V

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    .line 36
    if-eqz v1, :cond_a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    sub-int/2addr v2, v3

    .line 43
    .line 44
    :goto_1
    if-ltz v2, :cond_9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    check-cast v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;

    .line 51
    .line 52
    iget-object v5, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->value:Ljava/lang/String;

    .line 53
    .line 54
    iget v6, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->start:I

    .line 55
    .line 56
    iget v7, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->end:I

    .line 57
    .line 58
    iget v8, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    .line 59
    .line 60
    const-string v9, ""

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 64
    .line 65
    iget v4, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    .line 66
    .line 67
    sub-int v8, v4, v6

    .line 68
    sub-int/2addr v7, v8

    .line 69
    sub-int/2addr v4, v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    const/16 v5, 0x49

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 85
    move-result v5

    .line 86
    const/4 v8, -0x1

    .line 87
    .line 88
    if-eq v5, v8, :cond_2

    .line 89
    move v5, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v5, v0

    .line 92
    .line 93
    :goto_2
    const/16 v9, 0x55

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    .line 97
    move-result v9

    .line 98
    .line 99
    const/16 v10, 0x21

    .line 100
    .line 101
    if-eq v9, v8, :cond_3

    .line 102
    .line 103
    new-instance v9, Landroid/text/style/UnderlineSpan;

    .line 104
    .line 105
    .line 106
    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    .line 111
    :cond_3
    const/16 v9, 0x53

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    .line 115
    move-result v9

    .line 116
    .line 117
    if-eq v9, v8, :cond_4

    .line 118
    .line 119
    new-instance v9, Landroid/text/style/StrikethroughSpan;

    .line 120
    .line 121
    .line 122
    invoke-direct {v9}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 126
    .line 127
    :cond_4
    const/16 v9, 0x43

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    .line 131
    move-result v9

    .line 132
    .line 133
    if-eq v9, v8, :cond_5

    .line 134
    .line 135
    new-instance v9, Landroid/text/style/AlignmentSpan$Standard;

    .line 136
    .line 137
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 138
    .line 139
    .line 140
    invoke-direct {v9, v11}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 144
    .line 145
    :cond_5
    const/16 v9, 0x42

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    .line 149
    move-result v4

    .line 150
    .line 151
    if-eq v4, v8, :cond_7

    .line 152
    .line 153
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 154
    .line 155
    if-eqz v5, :cond_6

    .line 156
    const/4 v5, 0x3

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move v5, v3

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .line 166
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    .line 167
    .line 168
    const/high16 v5, 0x3fa00000    # 1.25f

    .line 169
    .line 170
    .line 171
    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 175
    .line 176
    iget-boolean v4, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    .line 177
    .line 178
    if-eqz v4, :cond_8

    .line 179
    .line 180
    const-string v4, "\n "

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v7, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    .line 185
    new-instance v4, Lcom/narvii/util/text/NVText$LineSpan;

    .line 186
    .line 187
    const/high16 v5, 0x3e800000    # 0.25f

    .line 188
    .line 189
    .line 190
    invoke-direct {v4, v5}, Lcom/narvii/util/text/NVText$LineSpan;-><init>(F)V

    .line 191
    .line 192
    add-int/lit8 v5, v7, 0x1

    .line 193
    .line 194
    add-int/lit8 v7, v7, 0x2

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v4, v5, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    .line 199
    const-string v4, " \n"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v6, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    .line 204
    new-instance v4, Lcom/narvii/util/text/NVText$LineSpan;

    .line 205
    .line 206
    const/high16 v5, 0x3f400000    # 0.75f

    .line 207
    .line 208
    .line 209
    invoke-direct {v4, v5}, Lcom/narvii/util/text/NVText$LineSpan;-><init>(F)V

    .line 210
    .line 211
    add-int/lit8 v5, v6, 0x1

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v4, v6, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 215
    goto :goto_4

    .line 216
    .line 217
    :cond_7
    if-eqz v5, :cond_8

    .line 218
    .line 219
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 220
    const/4 v5, 0x2

    .line 221
    .line 222
    .line 223
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    .line 228
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v0

    .line 235
    :cond_a
    return v0
.end method

.method protected renderTextPaint(Landroid/text/TextPaint;Z)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/text/NVText;->SPAN_BOLD:Landroid/text/style/StyleSpan;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/style/StyleSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 17
    .line 18
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 28
    .line 29
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-boolean p2, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR:Landroid/text/style/ForegroundColorSpan;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 49
    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    return-void
.end method
