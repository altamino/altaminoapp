.class final Lcom/narvii/util/text/MyExtractor$1;
.super Ljava/lang/Object;
.source "MyExtractor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/MyExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/twitter/Extractor$Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/twitter/Extractor$Entity;Lcom/twitter/Extractor$Entity;)I
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lcom/twitter/Extractor$Entity;

    check-cast p2, Lcom/twitter/Extractor$Entity;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/text/MyExtractor$1;->compare(Lcom/twitter/Extractor$Entity;Lcom/twitter/Extractor$Entity;)I

    move-result p1

    return p1
.end method
