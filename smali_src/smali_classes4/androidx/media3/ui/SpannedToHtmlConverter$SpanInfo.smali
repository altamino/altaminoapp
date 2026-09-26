.class final Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpanInfo"
.end annotation


# static fields
.field private static final FOR_CLOSING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOR_OPENING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final closingTag:Ljava/lang/String;

.field public final end:I

.field public final openingTag:Ljava/lang/String;

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/ui/b0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/ui/b0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/ui/c0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/media3/ui/c0;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    .line 15
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    iput p2, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iput-object p3, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->f(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->e(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic c()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic e(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private static synthetic f(Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method
