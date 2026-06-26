.class Lcom/narvii/util/text/NVText$TypefaceMarkers;
.super Ljava/lang/Object;
.source "NVText.java"


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

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->start:I

    .line 285
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->end:I

    .line 286
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->value:Ljava/lang/String;

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/util/text/NVText$TypefaceMarkers;->markEnd:I

    return-void
.end method
