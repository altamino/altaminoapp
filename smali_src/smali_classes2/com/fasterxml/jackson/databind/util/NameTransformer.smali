.class public abstract Lcom/fasterxml/jackson/databind/util/NameTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;
    }
.end annotation


# static fields
.field public static final NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;-><init>(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 6
    return-object v0
.end method

.method public static simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-lez v3, :cond_1

    .line 22
    move v0, v1

    .line 23
    .line 24
    :cond_1
    if-eqz v2, :cond_3

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;-><init>(Ljava/lang/String;)V

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_3
    if-eqz v0, :cond_4

    .line 41
    .line 42
    new-instance p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;-><init>(Ljava/lang/String;)V

    .line 46
    return-object p0

    .line 47
    .line 48
    :cond_4
    sget-object p0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 49
    return-object p0
.end method


# virtual methods
.method public abstract reverse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
