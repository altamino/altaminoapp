.class Lcom/narvii/util/text/NVText$URLWithTitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/NVText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URLWithTitle"
.end annotation


# instance fields
.field end:I

.field end1:I

.field end2:I

.field start:I

.field start1:I

.field start2:I

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/text/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/linkedin/urls/a;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->a()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/linkedin/urls/a;->c()Lcom/linkedin/urls/a$a;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    sget-object v0, Lcom/linkedin/urls/a$a;->URL:Lcom/linkedin/urls/a$a;

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method set(Ljava/util/regex/Matcher;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    iput v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start1:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    iput v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end1:I

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->start(I)I

    .line 30
    move-result v2

    .line 31
    .line 32
    iput v2, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start2:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->end(I)I

    .line 36
    move-result v2

    .line 37
    .line 38
    iput v2, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end2:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->url:Ljava/lang/String;

    .line 51
    return-void
.end method
