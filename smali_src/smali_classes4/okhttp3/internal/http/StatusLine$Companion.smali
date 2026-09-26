.class public final Lokhttp3/internal/http/StatusLine$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/StatusLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/http/StatusLine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;
    .locals 3
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "response"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lokhttp3/internal/http/StatusLine;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, p1}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "statusLine"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "HTTP/1."

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v4, 0x4

    .line 16
    .line 17
    const/16 v5, 0x20

    .line 18
    .line 19
    const-string v6, "Unexpected status line: "

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v0

    .line 36
    .line 37
    if-ne v0, v5, :cond_2

    .line 38
    const/4 v0, 0x7

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 42
    move-result v0

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x30

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    const/4 v2, 0x1

    .line 48
    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    .line 51
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 55
    .line 56
    .line 57
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0

    .line 63
    .line 64
    :cond_1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 68
    .line 69
    .line 70
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 76
    .line 77
    :cond_3
    const-string v0, "ICY "

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 86
    move v1, v4

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    move-result v2

    .line 91
    .line 92
    add-int/lit8 v3, v1, 0x3

    .line 93
    .line 94
    if-lt v2, v3, :cond_6

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 111
    move-result v7

    .line 112
    .line 113
    if-le v7, v3, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 117
    move-result v3

    .line 118
    .line 119
    if-ne v3, v5, :cond_4

    .line 120
    add-int/2addr v1, v4

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    const-string v1, "this as java.lang.String).substring(startIndex)"

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 133
    .line 134
    .line 135
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 140
    throw v0

    .line 141
    .line 142
    :cond_5
    const-string p1, ""

    .line 143
    .line 144
    :goto_1
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v0, v2, p1}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 148
    return-object v1

    .line 149
    .line 150
    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 151
    .line 152
    .line 153
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 158
    throw v0

    .line 159
    .line 160
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 161
    .line 162
    .line 163
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 168
    throw v0

    .line 169
    .line 170
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 171
    .line 172
    .line 173
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 178
    throw v0
.end method
