.class public final Lr7/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 11 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n1#1,482:1\n358#1:640\n358#1:641\n39#2:483\n852#3,8:484\n862#3,3:493\n866#3,11:574\n877#3,15:586\n823#3,6:601\n829#3,13:627\n823#3,6:658\n829#3,13:686\n852#3,8:699\n862#3,3:708\n866#3,11:791\n877#3,15:803\n852#3,8:818\n862#3,3:827\n866#3,11:908\n877#3,15:920\n69#4:492\n59#4:585\n69#4:664\n69#4:685\n69#4:707\n69#4:711\n69#4:790\n59#4:802\n69#4:826\n59#4:919\n123#5,5:496\n128#5,2:506\n130#5,61:510\n193#5:573\n9#5:607\n10#5,2:613\n12#5,7:617\n21#5:626\n9#5:665\n10#5,2:671\n12#5,7:675\n21#5:684\n123#5,5:712\n128#5,2:722\n130#5,61:726\n193#5:789\n123#5,5:830\n128#5,2:840\n130#5,61:844\n193#5:907\n372#6,5:501\n377#6,2:571\n372#6,5:608\n377#6,2:624\n372#6,5:666\n377#6,2:682\n372#6,5:717\n377#6,2:787\n372#6,5:835\n377#6,2:905\n84#7:508\n84#7:615\n84#7:673\n84#7:724\n84#7:842\n26#8:509\n26#8:616\n26#8:674\n26#8:725\n26#8:843\n1#9:642\n98#10,2:643\n507#11,13:645\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n156#1:640\n158#1:641\n30#1:483\n57#1:484,8\n57#1:493,3\n57#1:574,11\n57#1:586,15\n125#1:601,6\n125#1:627,13\n365#1:658,6\n365#1:686,13\n405#1:699,8\n405#1:708,3\n405#1:791,11\n405#1:803,15\n445#1:818,8\n445#1:827,3\n445#1:908,11\n445#1:920,15\n57#1:492\n57#1:585\n366#1:664\n379#1:685\n405#1:707\n406#1:711\n420#1:790\n405#1:802\n445#1:826\n445#1:919\n59#1:496,5\n59#1:506,2\n59#1:510,61\n59#1:573\n126#1:607\n126#1:613,2\n126#1:617,7\n126#1:626\n368#1:665\n368#1:671,2\n368#1:675,7\n368#1:684\n408#1:712,5\n408#1:722,2\n408#1:726,61\n408#1:789\n446#1:830,5\n446#1:840,2\n446#1:844,61\n446#1:907\n59#1:501,5\n59#1:571,2\n126#1:608,5\n126#1:624,2\n368#1:666,5\n368#1:682,2\n408#1:717,5\n408#1:787,2\n446#1:835,5\n446#1:905,2\n59#1:508\n126#1:615\n368#1:673\n408#1:724\n446#1:842\n59#1:509\n126#1:616\n368#1:674\n408#1:725\n446#1:843\n170#1:643,2\n337#1:645,13\n*E\n"
.end annotation


# direct methods
.method public static final a(I)Ljava/lang/Void;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/EOFException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Premature end of stream: expected "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p0, " bytes"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public static final b(Lr7/j;I)[B
    .locals 2
    .param p0    # Lr7/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-array v0, p1, [B

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, v1, p1}, Lr7/n;->b(Lr7/m;[BII)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget-object v0, Ls7/g;->EmptyByteArray:[B

    .line 17
    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lr7/j;IILjava/lang/Object;)[B
    .locals 2

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/m;->G0()J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    .line 11
    const-wide/32 v0, 0x7fffffff

    .line 12
    .line 13
    cmp-long p3, p1, v0

    .line 14
    .line 15
    if-gtz p3, :cond_0

    .line 16
    long-to-int p1, p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "Unable to convert to a ByteArray: packet is too big"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lr7/s;->b(Lr7/j;I)[B

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final d(Lr7/m;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lr7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "charset"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "charset.newDecoder()"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0, p2}, Lq7/b;->a(Ljava/nio/charset/CharsetDecoder;Lr7/m;I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic e(Lr7/m;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    .line 13
    const p2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Lr7/s;->d(Lr7/m;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final f(Lr7/m;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Lr7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "charset"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v0, "charset.newDecoder()"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p0, p1}, Lq7/a;->b(Ljava/nio/charset/CharsetDecoder;Lr7/m;I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic g(Lr7/m;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget-object p2, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lr7/s;->f(Lr7/m;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final h(Lr7/p;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V
    .locals 1
    .param p0    # Lr7/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "text"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "charset"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    if-ne p4, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, p2, p3}, Lr7/s;->i(Lr7/p;Ljava/lang/CharSequence;II)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 27
    move-result-object p4

    .line 28
    .line 29
    const-string v0, "charset.newEncoder()"

    .line 30
    .line 31
    .line 32
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p4, p0, p1, p2, p3}, Lq7/b;->f(Ljava/nio/charset/CharsetEncoder;Lr7/p;Ljava/lang/CharSequence;II)I

    .line 36
    return-void
.end method

.method private static final i(Lr7/p;Ljava/lang/CharSequence;II)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v1, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 14
    move-result v6

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lr7/a;->f()I

    .line 18
    move-result v7

    .line 19
    move-object v3, p1

    .line 20
    move v4, p2

    .line 21
    move v5, p3

    .line 22
    .line 23
    .line 24
    invoke-static/range {v2 .. v7}, Ls7/f;->b(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ls7/c;->a(I)S

    .line 29
    move-result v3

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ls7/c;->b(I)S

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    const v4, 0xffff

    .line 37
    and-int/2addr v3, v4

    .line 38
    add-int/2addr p2, v3

    .line 39
    and-int/2addr v2, v4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lr7/a;->a(I)V

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    if-ge p2, p3, :cond_0

    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    if-ge p2, p3, :cond_1

    .line 52
    move v2, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    .line 56
    :goto_1
    if-lez v2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v2, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 60
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 67
    return-void

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 71
    throw p1
.end method
