.class public final Lna/b;
.super Lorg/schabi/newpipe/extractor/linkhandler/d;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lna/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lna/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lna/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lna/b;->INSTANCE:Lna/b;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/d;-><init>()V

    .line 4
    return-void
.end method

.method public static n()Lna/b;
    .locals 1

    .line 1
    sget-object v0, Lna/b;->INSTANCE:Lna/b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lna/b;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lqa/y;->l(Ljava/net/URL;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->e0(Ljava/net/URL;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->V(Ljava/net/URL;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_7

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "/watch"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    const-string v1, "/playlist"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    new-instance p1, Laa/h;

    .line 49
    .line 50
    const-string v0, "the url given is neither a video nor a playlist URL"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    .line 56
    :cond_2
    :goto_1
    const-string v0, "list"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    const-string v1, "[a-zA-Z0-9_-]{10,}"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Y(Ljava/lang/String;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const-string v1, "v"

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v1}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_3
    new-instance p1, Laa/c;

    .line 88
    .line 89
    const-string v0, "Channel Mix without a video id are not supported"

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, v0}, Laa/c;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :cond_4
    :goto_2
    return-object v0

    .line 95
    .line 96
    :cond_5
    new-instance p1, Laa/h;

    .line 97
    .line 98
    const-string v0, "the list-ID given in the URL does not match the list pattern"

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1

    .line 103
    .line 104
    :cond_6
    new-instance p1, Laa/h;

    .line 105
    .line 106
    const-string v0, "the URL given does not include a playlist"

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1

    .line 111
    .line 112
    :cond_7
    new-instance p1, Laa/h;

    .line 113
    .line 114
    const-string v0, "the url given is not a YouTube-URL"

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    :goto_3
    new-instance v0, Laa/h;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    const-string v3, "Error could not parse URL: "

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lna/b;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "list"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->a0(Ljava/lang/String;)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const-string v2, "v"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v3, "https://www.youtube.com/watch?v="

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "&list="

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    new-instance v2, Lorg/schabi/newpipe/extractor/linkhandler/c;

    .line 61
    .line 62
    new-instance v3, Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, p1, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/linkhandler/c;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v2

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/d;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/c;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    .line 76
    :goto_1
    new-instance v0, Laa/h;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v3, "Error could not parse URL: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    throw v0
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p3, "https://www.youtube.com/playlist?list="

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
