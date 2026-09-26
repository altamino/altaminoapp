.class public final Lio/ktor/http/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1064#2,2:70\n1#3:72\n1194#4,2:73\n1222#4,4:75\n*S KotlinDebug\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n*L\n16#1:70,2\n49#1:73,2\n49#1:75,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/l0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HTTP:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HTTPS:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SOCKS:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WS:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WSS:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/ktor/http/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final defaultPort:I

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/l0$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/http/l0$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/http/l0;->Companion:Lio/ktor/http/l0$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/http/l0;

    .line 11
    .line 12
    const-string v1, "http"

    .line 13
    .line 14
    const/16 v2, 0x50

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lio/ktor/http/l0;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    sput-object v0, Lio/ktor/http/l0;->HTTP:Lio/ktor/http/l0;

    .line 20
    .line 21
    new-instance v1, Lio/ktor/http/l0;

    .line 22
    .line 23
    const-string v3, "https"

    .line 24
    .line 25
    const/16 v4, 0x1bb

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Lio/ktor/http/l0;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v1, Lio/ktor/http/l0;->HTTPS:Lio/ktor/http/l0;

    .line 31
    .line 32
    new-instance v3, Lio/ktor/http/l0;

    .line 33
    .line 34
    const-string v5, "ws"

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v5, v2}, Lio/ktor/http/l0;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    sput-object v3, Lio/ktor/http/l0;->WS:Lio/ktor/http/l0;

    .line 40
    .line 41
    new-instance v2, Lio/ktor/http/l0;

    .line 42
    .line 43
    const-string v5, "wss"

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v5, v4}, Lio/ktor/http/l0;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    sput-object v2, Lio/ktor/http/l0;->WSS:Lio/ktor/http/l0;

    .line 49
    .line 50
    new-instance v4, Lio/ktor/http/l0;

    .line 51
    .line 52
    const-string v5, "socks"

    .line 53
    .line 54
    const/16 v6, 0x438

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5, v6}, Lio/ktor/http/l0;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    sput-object v4, Lio/ktor/http/l0;->SOCKS:Lio/ktor/http/l0;

    .line 60
    const/4 v5, 0x5

    .line 61
    .line 62
    new-array v5, v5, [Lio/ktor/http/l0;

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    aput-object v0, v5, v6

    .line 66
    const/4 v0, 0x1

    .line 67
    .line 68
    aput-object v1, v5, v0

    .line 69
    const/4 v0, 0x2

    .line 70
    .line 71
    aput-object v3, v5, v0

    .line 72
    const/4 v0, 0x3

    .line 73
    .line 74
    aput-object v2, v5, v0

    .line 75
    const/4 v0, 0x4

    .line 76
    .line 77
    aput-object v4, v5, v0

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Ljava/lang/Iterable;

    .line 84
    .line 85
    const/16 v1, 0xa

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 93
    move-result v1

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Lj8/m;->e(II)I

    .line 99
    move-result v1

    .line 100
    .line 101
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-eqz v1, :cond_0

    .line 115
    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 119
    move-object v3, v1

    .line 120
    .line 121
    check-cast v3, Lio/ktor/http/l0;

    .line 122
    .line 123
    iget-object v3, v3, Lio/ktor/http/l0;->name:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_0
    sput-object v2, Lio/ktor/http/l0;->byName:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lio/ktor/http/l0;->name:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lio/ktor/http/l0;->defaultPort:I

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-ge p2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lio/ktor/util/i;->a(C)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    add-int/lit8 p2, p2, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "All characters should be lower case"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_1
    return-void
.end method

.method public static final synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/l0;->byName:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic b()Lio/ktor/http/l0;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/l0;->HTTP:Lio/ktor/http/l0;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/http/l0;->defaultPort:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/l0;->name:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/http/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/http/l0;

    iget-object v1, p0, Lio/ktor/http/l0;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/l0;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/ktor/http/l0;->defaultPort:I

    iget p1, p1, Lio/ktor/http/l0;->defaultPort:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/ktor/http/l0;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/l0;->defaultPort:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLProtocol(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/l0;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/l0;->defaultPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
