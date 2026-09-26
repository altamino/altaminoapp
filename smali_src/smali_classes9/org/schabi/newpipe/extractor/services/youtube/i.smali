.class public final Lorg/schabi/newpipe/extractor/services/youtube/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/i$a;
    }
.end annotation


# static fields
.field private static final BOLD_CLOSE:Ljava/lang/String; = "</b>"

.field private static final BOLD_OPEN:Ljava/lang/String; = "<b>"

.field private static final ITALIC_CLOSE:Ljava/lang/String; = "</i>"

.field private static final ITALIC_OPEN:Ljava/lang/String; = "<i>"

.field private static final LINK_CLOSE:Ljava/lang/String; = "</a>"

.field private static final LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

.field private static final STRIKETHROUGH_CLOSE:Ljava/lang/String; = "</s>"

.field private static final STRIKETHROUGH_OPEN:Ljava/lang/String; = "<s>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(?s)^ +[/\u2022] +(.*?) +$"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/i;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/i;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/i;->k(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic c(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/i;->m(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/i;->n(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/i;->l(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method private static g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "commandRuns"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/e;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lda/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 41
    return-void
.end method

.method private static h(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "styleRuns"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/f;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lda/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 41
    return-void
.end method

.method public static i(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "content"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return-object v1

    .line 18
    .line 19
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/i;->g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/i;->h(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 34
    .line 35
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/c;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/c;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/b;->a(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    .line 47
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/d;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/d;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/b;->a(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/i;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private static j(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onTapOptions"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "accessibilityInfo"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "accessibilityLabel"

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    const-string v0, " Channel Link"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "YouTube: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/h;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/h;-><init>(Ljava/lang/String;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/g;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/g;-><init>()V

    .line 53
    :goto_1
    return-object v0
.end method

.method private static synthetic k(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "onTap"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "innertubeCommand"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "startIndex"

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v1

    .line 20
    .line 21
    const-string v2, "length"

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-ltz v1, :cond_2

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    if-lt v2, v3, :cond_2

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v4, "<a href=\""

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "\">"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/i;->j(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 74
    .line 75
    const-string v4, "</a>"

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v0, v4, v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 84
    add-int/2addr v1, v2

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, v4, v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic l(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "startIndex"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    const-string v1, "length"

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ltz v0, :cond_3

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/2addr v1, v0

    .line 22
    .line 23
    const-string v2, "strikethrough"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 32
    .line 33
    const-string v3, "<s>"

    .line 34
    .line 35
    const-string v4, "</s>"

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    :cond_1
    const-string v2, "italic"

    .line 52
    .line 53
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 62
    .line 63
    const-string v3, "<i>"

    .line 64
    .line 65
    const-string v4, "</i>"

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    :cond_2
    const-string v2, "weightLabel"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    const-string v3, "FONT_WEIGHT_NORMAL"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p2

    .line 98
    .line 99
    if-nez p2, :cond_3

    .line 100
    .line 101
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 102
    .line 103
    const-string v2, "<b>"

    .line 104
    .line 105
    const-string v3, "</b>"

    .line 106
    .line 107
    .line 108
    invoke-direct {p2, v2, v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v2, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic m(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 3
    return p0
.end method

.method private static synthetic n(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 3
    return p0
.end method

.method private static synthetic o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/i;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    return-object p0
.end method

.method private static synthetic p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p0
.end method

.method static q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/i$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xa0

    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    new-instance v0, Ljava/util/Stack;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 14
    .line 15
    new-instance v1, Ljava/util/Stack;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    move v5, v4

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    move-result v6

    .line 31
    .line 32
    if-ge v3, v6, :cond_6

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 36
    move-result v6

    .line 37
    .line 38
    if-ge v5, v6, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    check-cast v6, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 45
    .line 46
    iget v6, v6, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    check-cast v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 53
    .line 54
    iget v7, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 58
    move-result v6

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    check-cast v6, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 66
    .line 67
    iget v6, v6, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 85
    .line 86
    iget v4, v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->pos:I

    .line 87
    .line 88
    if-ne v4, v6, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    .line 100
    move-result v7

    .line 101
    .line 102
    if-nez v7, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 106
    move-result-object v7

    .line 107
    .line 108
    check-cast v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->a(Lorg/schabi/newpipe/extractor/services/youtube/i$a;)Z

    .line 112
    move-result v8

    .line 113
    .line 114
    if-eqz v8, :cond_2

    .line 115
    .line 116
    iget-object v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->transformContent:Ljava/util/function/Function;

    .line 117
    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    iget v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->openPosInOutput:I

    .line 121
    .line 122
    if-ltz v4, :cond_1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 126
    move-result v8

    .line 127
    .line 128
    iget-object v9, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->transformContent:Ljava/util/function/Function;

    .line 129
    .line 130
    iget v10, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->openPosInOutput:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 134
    move-result-object v10

    .line 135
    .line 136
    .line 137
    invoke-static {v9, v10}, Lcom/iabtcf/utils/j;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v9

    .line 139
    .line 140
    check-cast v9, Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v4, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    :cond_1
    iget-object v4, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->close:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_2
    iget-object v8, v7, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->close:Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    goto :goto_2

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-nez v4, :cond_5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 169
    .line 170
    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 171
    .line 172
    iget-object v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->open:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    goto :goto_3

    .line 180
    .line 181
    .line 182
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    check-cast v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;

    .line 186
    .line 187
    iget-object v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->open:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 194
    move-result v7

    .line 195
    .line 196
    iput v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/i$a;->openPosInOutput:I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    :cond_5
    move v4, v6

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    .line 207
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    .line 210
    .line 211
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 220
    .line 221
    const-string p1, "\n"

    .line 222
    .line 223
    const-string p2, "<br>"

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 227
    move-result-object p0

    .line 228
    .line 229
    const-string p1, "  "

    .line 230
    .line 231
    const-string p2, " &nbsp;"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 235
    move-result-object p0

    .line 236
    return-object p0
.end method
