.class public Lcom/narvii/util/text/NVText;
.super Landroid/text/SpannableStringBuilder;
.source "NVText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/text/NVText$ClickableTagSpan;,
        Lcom/narvii/util/text/NVText$TagSpan;,
        Lcom/narvii/util/text/NVText$LineSpan;,
        Lcom/narvii/util/text/NVText$TypefaceMarkers;,
        Lcom/narvii/util/text/NVText$URLWithTitle;
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

    .line 35
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_BOLD:Landroid/text/style/StyleSpan;

    .line 36
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xbaa97e

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    .line 37
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xf49a02

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 38
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x5f3502

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    .line 39
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR:Landroid/text/style/ForegroundColorSpan;

    .line 40
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    .line 41
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x77000001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/narvii/util/text/NVText;->SPAN_DARK_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    const-string v0, "\\[([^\\[\\]]+)\\|\\s*(.+?)\\s*\\]"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^((?:\\[[BCIUS]+\\])+).*$"

    const/16 v1, 0xa

    .line 44
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    .line 338
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Lcom/narvii/util/text/NVText;->FMI:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
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

    .line 51
    iput-boolean p1, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    .line 59
    sget-object p1, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V
    .locals 5

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 65
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Lcom/narvii/util/text/NVText;->SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    iput-object p1, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic access$100()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 33
    sget-object v0, Lcom/narvii/util/text/NVText;->FMI:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method private markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V
    .locals 2

    const/16 v0, 0x21

    if-nez p5, :cond_0

    .line 419
    new-instance p3, Lcom/narvii/util/text/NVText$TagSpan;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/narvii/util/text/NVText$TagSpan;-><init>(Lcom/narvii/util/text/NVText;Lcom/narvii/util/text/NVText$1;)V

    .line 420
    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 422
    :cond_0
    new-instance v1, Lcom/narvii/util/text/NVText$ClickableTagSpan;

    invoke-direct {v1, p0, p4, p3, p5}, Lcom/narvii/util/text/NVText$ClickableTagSpan;-><init>(Lcom/narvii/util/text/NVText;ILjava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)V

    .line 423
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private markTag(Lcom/linkedin/urls/Entity;Lcom/narvii/util/text/OnTagClickListener;)V
    .locals 8

    .line 407
    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getType()Lcom/linkedin/urls/Entity$Type;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getEnd()I

    move-result v4

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getType()Lcom/linkedin/urls/Entity$Type;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/Entity$Type;->HASHTAG:Lcom/linkedin/urls/Entity$Type;

    if-ne v0, v1, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getEnd()I

    move-result v4

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getValue()Ljava/lang/String;

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
            "Lcom/linkedin/urls/Entity;",
            ">;I",
            "Lcom/narvii/util/text/OnTagClickListener;",
            ")V"
        }
    .end annotation

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 398
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkedin/urls/Entity;

    .line 400
    invoke-virtual {v0}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v2

    .line 401
    invoke-virtual {v0}, Lcom/linkedin/urls/Entity;->getEnd()I

    move-result v3

    .line 402
    invoke-virtual {v0}, Lcom/linkedin/urls/Entity;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 488
    invoke-static {p0}, Lcom/narvii/util/text/IMGUtils;->removeIMGs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 489
    invoke-static {p0}, Lcom/narvii/util/text/NVText;->removeTitleTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-static {p0}, Lcom/narvii/util/text/NVText;->removeTypefaceMarkers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeTitleTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 495
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x5b

    .line 497
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_8

    const/16 v0, 0x5d

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 505
    sget-object v0, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 506
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_2

    .line 508
    new-instance v3, Lcom/linkedin/urls/detection/UrlDetector;

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetectorOptions;->Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-direct {v3, p0, v4}, Lcom/linkedin/urls/detection/UrlDetector;-><init>(Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;)V

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlDetector;->detect()Ljava/util/List;

    move-result-object v3

    .line 510
    :cond_2
    new-instance v4, Lcom/narvii/util/text/NVText$URLWithTitle;

    invoke-direct {v4, v1}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>(Lcom/narvii/util/text/NVText$1;)V

    .line 511
    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText$URLWithTitle;->set(Ljava/util/regex/Matcher;)V

    .line 512
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/linkedin/urls/Entity;

    .line 513
    invoke-virtual {v4, v6}, Lcom/narvii/util/text/NVText$URLWithTitle;->match(Lcom/linkedin/urls/Entity;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v2, :cond_4

    .line 515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    return-object p0

    .line 525
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_7

    .line 527
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 528
    iget v3, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    iget v4, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    iget-object v1, v1, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 531
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public static removeTypefaceMarkers(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 535
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x5b

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x0

    .line 543
    sget-object v2, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 544
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    new-instance v3, Lcom/linkedin/urls/Entity;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/linkedin/urls/Entity$Type;->CASHTAG:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    if-nez v1, :cond_1

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    :goto_1
    if-ltz p0, :cond_4

    .line 554
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkedin/urls/Entity;

    .line 555
    invoke-virtual {v4}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v5

    invoke-virtual {v4}, Lcom/linkedin/urls/Entity;->getEnd()I

    .line 556
    invoke-virtual {v4}, Lcom/linkedin/urls/Entity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    const-string v6, ""

    .line 559
    invoke-virtual {v2, v5, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 561
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 85
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x3

    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 88
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x31

    if-ltz v3, :cond_1

    .line 90
    array-length v4, p1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x73

    if-ne v2, v4, :cond_1

    .line 91
    aget-object v2, p1, v3

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    add-int/lit8 v3, v0, 0x4

    .line 94
    invoke-virtual {p0, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x4

    .line 96
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 98
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format arg %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 3

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const-string v1, "Community Guidelines"

    const-string v2, "[Guidelines]"

    .line 171
    invoke-virtual {p0, v2, v1, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "[guidelines]"

    .line 172
    invoke-virtual {p0, v2, v1, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "[TOS]"

    const-string v2, "Terms of Service"

    .line 173
    invoke-virtual {p0, v1, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result p1

    add-int/2addr v0, p1

    .line 174
    invoke-virtual {p0}, Lcom/narvii/util/text/NVText;->markTypefaceMarkers()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I
    .locals 13

    .line 192
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/linkedin/urls/detection/UrlDetector;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-direct {v1, v0, v2}, Lcom/linkedin/urls/detection/UrlDetector;-><init>(Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;)V

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlDetector;->detect()Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_7

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    .line 200
    new-array v2, p2, [Lcom/narvii/util/text/NVText$URLWithTitle;

    .line 201
    sget-object v3, Lcom/narvii/util/text/NVText;->TITLE_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 204
    new-instance v5, Lcom/narvii/util/text/NVText$URLWithTitle;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>(Lcom/narvii/util/text/NVText$1;)V

    .line 205
    invoke-virtual {v5, v0}, Lcom/narvii/util/text/NVText$URLWithTitle;->set(Ljava/util/regex/Matcher;)V

    move v7, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_1

    .line 207
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/linkedin/urls/Entity;

    invoke-virtual {v5, v8}, Lcom/narvii/util/text/NVText$URLWithTitle;->match(Lcom/linkedin/urls/Entity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    aput-object v5, v2, v4

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_7

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sub-int/2addr p2, v6

    const/4 v4, 0x0

    :goto_2
    if-ltz p2, :cond_6

    .line 219
    aget-object v5, v2, p2

    if-nez v5, :cond_4

    .line 221
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkedin/urls/Entity;

    .line 222
    invoke-virtual {v5}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v6

    if-lt v6, v3, :cond_3

    invoke-virtual {v5}, Lcom/linkedin/urls/Entity;->getEnd()I

    move-result v6

    if-gt v6, v4, :cond_3

    goto :goto_3

    .line 225
    :cond_3
    invoke-direct {p0, v5, p1}, Lcom/narvii/util/text/NVText;->markTag(Lcom/linkedin/urls/Entity;Lcom/narvii/util/text/OnTagClickListener;)V

    goto :goto_3

    .line 227
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 228
    iget v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    iget v4, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    iget-object v6, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    iget v8, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    iget-object v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v9, v8, v3

    iget-object v10, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->url:Ljava/lang/String;

    const/4 v11, 0x5

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lcom/narvii/util/text/NVText;->markTag(IILjava/lang/String;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 231
    iget v3, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 232
    iget v4, v5, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 233
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 236
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 240
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkedin/urls/Entity;

    .line 241
    invoke-direct {p0, v0, p1}, Lcom/narvii/util/text/NVText;->markTag(Lcom/linkedin/urls/Entity;Lcom/narvii/util/text/OnTagClickListener;)V

    goto :goto_4

    .line 243
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 3

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "Community Guidelines"

    const-string v2, "[Guidelines]"

    .line 184
    invoke-virtual {p0, v2, v0, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "[guidelines]"

    .line 185
    invoke-virtual {p0, v2, v0, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v0

    add-int/2addr v1, v0

    const-string v0, "[TOS]"

    const-string v2, "Terms of Service"

    .line 186
    invoke-virtual {p0, v0, v2, p1}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result p1

    add-int/2addr v1, p1

    .line 187
    invoke-virtual {p0}, Lcom/narvii/util/text/NVText;->markTypefaceMarkers()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    move-result p1

    return p1
.end method

.method public markText(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I
    .locals 6

    .line 374
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 376
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-nez p2, :cond_0

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 379
    new-instance v4, Lcom/linkedin/urls/Entity;

    sget-object v5, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    .line 380
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 383
    invoke-virtual {p0, v2, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 386
    new-instance v4, Lcom/linkedin/urls/Entity;

    sget-object v5, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    .line 387
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 390
    invoke-direct {p0, v1, p1, p3}, Lcom/narvii/util/text/NVText;->markTags(Ljava/util/List;ILcom/narvii/util/text/OnTagClickListener;)V

    .line 392
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public markTypefaceMarkers()I
    .locals 12

    .line 293
    sget-object v0, Lcom/narvii/util/text/NVText;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    new-instance v2, Lcom/narvii/util/text/NVText$TypefaceMarkers;

    invoke-direct {v2, v0}, Lcom/narvii/util/text/NVText$TypefaceMarkers;-><init>(Ljava/util/regex/Matcher;)V

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_a

    .line 302
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_9

    .line 303
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;

    .line 304
    iget-object v5, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->value:Ljava/lang/String;

    .line 305
    iget v6, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->start:I

    iget v7, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->end:I

    .line 306
    iget v8, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    const-string v9, ""

    invoke-virtual {p0, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    iget v4, v4, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    sub-int v8, v4, v6

    sub-int/2addr v7, v8

    sub-int/2addr v4, v6

    .line 308
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x49

    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/16 v9, 0x55

    .line 310
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/16 v10, 0x21

    if-eq v9, v8, :cond_3

    .line 311
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    const/16 v9, 0x53

    .line 313
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v8, :cond_4

    .line 314
    new-instance v9, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v9}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    const/16 v9, 0x43

    .line 316
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v8, :cond_5

    .line 317
    new-instance v9, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v9, v11}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v9, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    const/16 v9, 0x42

    .line 319
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v8, :cond_7

    .line 320
    new-instance v4, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    :goto_3
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 321
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 322
    iget-boolean v4, p0, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    if-eqz v4, :cond_8

    const-string v4, "\n "

    .line 323
    invoke-virtual {p0, v7, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 324
    new-instance v4, Lcom/narvii/util/text/NVText$LineSpan;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v4, v5}, Lcom/narvii/util/text/NVText$LineSpan;-><init>(F)V

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v4, v5, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v4, " \n"

    .line 325
    invoke-virtual {p0, v6, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 326
    new-instance v4, Lcom/narvii/util/text/NVText$LineSpan;

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v4, v5}, Lcom/narvii/util/text/NVText$LineSpan;-><init>(F)V

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v4, v6, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    .line 329
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 332
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_a
    return v0
.end method

.method protected renderTextPaint(Landroid/text/TextPaint;Z)V
    .locals 1

    .line 462
    sget-object v0, Lcom/narvii/util/text/NVText;->SPAN_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/StyleSpan;->updateDrawState(Landroid/text/TextPaint;)V

    if-eqz p2, :cond_1

    .line 464
    iget-boolean p2, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    if-eqz p2, :cond_0

    .line 465
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 466
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 468
    :cond_0
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_COLOR_PRESSED:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 469
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_BG_PRESSED:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-boolean p2, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    if-eqz p2, :cond_2

    .line 473
    sget-object p2, Lcom/narvii/util/text/NVText;->SPAN_DARK_COLOR:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object p2, p0, Lcom/narvii/util/text/NVText;->spanColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/narvii/util/text/NVText;->isDarkTheme:Z

    return-void
.end method
