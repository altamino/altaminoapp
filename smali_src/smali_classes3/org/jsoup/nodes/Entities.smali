.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$CoreCharset;,
        Lorg/jsoup/nodes/Entities$EscapeMode;
    }
.end annotation


# static fields
.field private static final DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

.field private static final codeDelims:[C

.field static final codepointRadix:I = 0x24

.field private static final empty:I = -0x1

.field private static final emptyName:Ljava/lang/String; = ""

.field private static final multipoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    .line 21
    .line 22
    sput-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 23
    return-void

    .line 24
    nop

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    const/16 v1, 0x3b

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/16 p2, 0x26

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string p1, "&#x"

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 42
    :goto_0
    return-void
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    .line 8
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq p0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    return v0

    .line 21
    .line 22
    :cond_1
    const/16 p0, 0x80

    .line 23
    .line 24
    if-ge p1, p0, :cond_2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 16
    move-result p0

    .line 17
    .line 18
    aput p0, p1, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 22
    move-result p0

    .line 23
    .line 24
    aput p0, p1, v1

    .line 25
    const/4 p0, 0x2

    .line 26
    return p0

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 32
    move-result p0

    .line 33
    const/4 v0, -0x1

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    aput p0, p1, v2

    .line 38
    return v1

    .line 39
    :cond_1
    return v2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 5
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    .line 2
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lorg/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 8
    iget-object p2, p2, Lorg/jsoup/nodes/Document$OutputSettings;->coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_12

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eqz p4, :cond_3

    .line 11
    invoke-static {v7}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    if-eqz p5, :cond_0

    if-eqz v5, :cond_11

    :cond_0
    if-eqz v6, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x20

    .line 12
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v6, v9

    goto/16 :goto_2

    :cond_2
    move v6, v3

    move v5, v9

    :cond_3
    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_f

    int-to-char v8, v7

    const/16 v9, 0x22

    if-eq v8, v9, :cond_d

    const/16 v9, 0x26

    if-eq v8, v9, :cond_c

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_9

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_7

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_5

    .line 13
    invoke-static {p2, v8, v1}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 14
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {p0, v0, v7}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    goto :goto_2

    .line 16
    :cond_5
    sget-object v8, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v0, v8, :cond_6

    const-string v8, "&nbsp;"

    .line 17
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_6
    const-string v8, "&#xa0;"

    .line 18
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    const-string v8, "&gt;"

    .line 19
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 20
    :cond_8
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_b

    .line 21
    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-ne v0, v9, :cond_a

    goto :goto_1

    .line 22
    :cond_a
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_b
    :goto_1
    const-string v8, "&lt;"

    .line 23
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_c
    const-string v8, "&amp;"

    .line 24
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_e

    const-string v8, "&quot;"

    .line 25
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 26
    :cond_e
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 27
    :cond_f
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 28
    invoke-virtual {v1, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 29
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 30
    :cond_10
    invoke-static {p0, v0, v7}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 31
    :cond_11
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 17
    move-result p0

    .line 18
    const/4 v0, -0x1

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    filled-new-array {p0}, [I

    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_1
    const-string p0, ""

    .line 35
    return-object p0
.end method

.method public static getCharacterByName(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    int-to-char p0, p0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 8

    .line 1
    .line 2
    new-array v0, p2, [Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    new-array v0, p2, [I

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 11
    .line 12
    new-array v0, p2, [I

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 16
    .line 17
    new-array v0, p2, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    move v1, p1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x3d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 43
    .line 44
    sget-object v3, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    const/16 v4, 0x24

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 62
    .line 63
    const/16 v6, 0x2c

    .line 64
    const/4 v7, -0x1

    .line 65
    .line 66
    if-ne v5, v6, :cond_0

    .line 67
    .line 68
    const/16 v5, 0x3b

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 76
    move-result v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    move v5, v7

    .line 82
    .line 83
    :goto_1
    const/16 v6, 0x26

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v6}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    .line 89
    .line 90
    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 91
    move-result v4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    aput-object v2, v6, v1

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    .line 104
    move-result-object v6

    .line 105
    .line 106
    aput v3, v6, v1

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    .line 110
    move-result-object v6

    .line 111
    .line 112
    aput v3, v6, v4

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    aput-object v2, v6, v4

    .line 119
    .line 120
    if-eq v5, v7, :cond_1

    .line 121
    .line 122
    sget-object v4, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 123
    .line 124
    new-instance v6, Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    filled-new-array {v3, v5}, [I

    .line 128
    move-result-object v3

    .line 129
    const/4 v5, 0x2

    .line 130
    .line 131
    .line 132
    invoke-direct {v6, v3, p1, v5}, Ljava/lang/String;-><init>([III)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_2
    if-ne v1, p2, :cond_3

    .line 141
    const/4 p1, 0x1

    .line 142
    .line 143
    :cond_3
    const-string p0, "Unexpected count of entities loaded"

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p0}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 147
    return-void
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
