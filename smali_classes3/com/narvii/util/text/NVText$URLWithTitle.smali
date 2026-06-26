.class Lcom/narvii/util/text/NVText$URLWithTitle;
.super Ljava/lang/Object;
.source "NVText.java"


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

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/text/NVText$1;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/narvii/util/text/NVText$URLWithTitle;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/linkedin/urls/Entity;)Z
    .locals 2

    .line 269
    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getStart()I

    move-result v0

    iget v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getEnd()I

    move-result v0

    iget v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/linkedin/urls/Entity;->getType()Lcom/linkedin/urls/Entity$Type;

    move-result-object p1

    sget-object v0, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method set(Ljava/util/regex/Matcher;)V
    .locals 3

    .line 258
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start:I

    .line 259
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end:I

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start1:I

    .line 261
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end1:I

    const/4 v1, 0x2

    .line 262
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->start2:I

    .line 263
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->end2:I

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->title:Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/text/NVText$URLWithTitle;->url:Ljava/lang/String;

    return-void
.end method
