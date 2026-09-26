.class Lcom/narvii/util/text/NVText$TypefaceMarkers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/NVText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypefaceMarkers"
.end annotation


# instance fields
.field end:I

.field markEnd:I

.field start:I

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->start:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->end:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->value:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    .line 29
    return-void
.end method
