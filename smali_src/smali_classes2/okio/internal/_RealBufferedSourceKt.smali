.class public final Lokio/internal/_RealBufferedSourceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-RealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -RealBufferedSource.kt\nokio/internal/_RealBufferedSourceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 -Util.kt\nokio/_UtilKt\n*L\n1#1,399:1\n1#2:400\n61#3:401\n61#3:402\n61#3:403\n61#3:404\n61#3:405\n61#3:406\n61#3:407\n61#3:408\n61#3:409\n61#3:410\n61#3:411\n61#3:412\n61#3:413\n61#3:414\n61#3:415\n61#3:416\n61#3:417\n61#3:418\n61#3:419\n61#3:420\n61#3:421\n61#3:422\n61#3:423\n61#3:425\n61#3:426\n61#3:427\n61#3:428\n61#3:429\n61#3:430\n61#3:431\n61#3:432\n61#3:433\n61#3:434\n61#3:435\n61#3:436\n61#3:437\n61#3:438\n61#3:439\n61#3:440\n61#3:441\n61#3:442\n61#3:443\n61#3:444\n61#3:446\n61#3:447\n61#3:448\n61#3:449\n61#3:450\n61#3:451\n61#3:452\n61#3:453\n61#3:454\n61#3:455\n61#3:456\n61#3:457\n61#3:458\n61#3:459\n61#3:460\n61#3:461\n61#3:462\n61#3:463\n61#3:464\n61#3:465\n61#3:466\n61#3:467\n61#3:468\n61#3:469\n61#3:470\n61#3:471\n61#3:472\n87#4:424\n87#4:445\n*S KotlinDebug\n*F\n+ 1 -RealBufferedSource.kt\nokio/internal/_RealBufferedSourceKt\n*L\n38#1:401\n39#1:402\n43#1:403\n44#1:404\n49#1:405\n59#1:406\n60#1:407\n67#1:408\n71#1:409\n72#1:410\n77#1:411\n84#1:412\n91#1:413\n96#1:414\n104#1:415\n105#1:416\n110#1:417\n119#1:418\n120#1:419\n127#1:420\n133#1:421\n134#1:422\n138#1:423\n139#1:425\n147#1:426\n151#1:427\n156#1:428\n157#1:429\n160#1:430\n163#1:431\n164#1:432\n165#1:433\n171#1:434\n172#1:435\n177#1:436\n184#1:437\n185#1:438\n190#1:439\n198#1:440\n200#1:441\n201#1:442\n203#1:443\n206#1:444\n208#1:446\n216#1:447\n223#1:448\n228#1:449\n233#1:450\n238#1:451\n243#1:452\n248#1:453\n253#1:454\n261#1:455\n272#1:456\n280#1:457\n294#1:458\n301#1:459\n304#1:460\n305#1:461\n316#1:462\n321#1:463\n322#1:464\n335#1:465\n338#1:466\n339#1:467\n351#1:468\n354#1:469\n355#1:470\n380#1:471\n393#1:472\n138#1:424\n206#1:445\n*E\n"
.end annotation


# direct methods
.method public static final commonClose(Lokio/RealBufferedSource;)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
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
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 14
    .line 15
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 19
    .line 20
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lokio/Buffer;->clear()V

    .line 24
    return-void
.end method

.method public static final commonExhausted(Lokio/RealBufferedSource;)Z
    .locals 6
    .param p0    # Lokio/RealBufferedSource;
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
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 22
    .line 23
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 24
    .line 25
    const-wide/16 v2, 0x2000

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    const-wide/16 v4, -0x1

    .line 32
    .line 33
    cmp-long p0, v2, v4

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    .line 39
    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "closed"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;BJJ)J
    .locals 9
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_3

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    .line 2
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p4

    if-gez v2, :cond_2

    .line 6
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 7
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    .line 8
    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fromIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " toIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 13
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 15
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 16
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 17
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 18
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    .line 19
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 20
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOfElement(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
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
    const-string v0, "targetBytes"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    const-wide/16 v2, -0x1

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    return-wide v0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 38
    .line 39
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 40
    .line 41
    const-wide/16 v6, 0x2000

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 45
    move-result-wide v4

    .line 46
    .line 47
    cmp-long v4, v4, v2

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    return-wide v2

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 54
    move-result-wide p2

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "closed"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
.end method

.method public static final commonPeek(Lokio/RealBufferedSource;)Lokio/BufferedSource;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
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
    new-instance v0, Lokio/PeekSource;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final commonRangeEquals(Lokio/RealBufferedSource;JLokio/ByteString;II)Z
    .locals 7
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
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
    const-string v0, "bytes"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, p1, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    if-ltz v0, :cond_4

    .line 24
    .line 25
    if-ltz p4, :cond_4

    .line 26
    .line 27
    if-ltz p5, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 31
    move-result v0

    .line 32
    sub-int/2addr v0, p4

    .line 33
    .line 34
    if-ge v0, p5, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move v0, v2

    .line 37
    .line 38
    :goto_0
    if-ge v0, p5, :cond_3

    .line 39
    int-to-long v3, v0

    .line 40
    add-long/2addr v3, p1

    .line 41
    .line 42
    const-wide/16 v5, 0x1

    .line 43
    add-long/2addr v5, v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    return v2

    .line 51
    .line 52
    :cond_1
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 56
    move-result v3

    .line 57
    .line 58
    add-int v4, p4, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    .line 62
    move-result v4

    .line 63
    .line 64
    if-eq v3, v4, :cond_2

    .line 65
    return v2

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return v1

    .line 70
    :cond_4
    :goto_1
    return v2

    .line 71
    .line 72
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p1, "closed"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;[BII)I
    .locals 9
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 14
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 15
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 16
    iget-object p3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 17
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x2000

    .line 18
    invoke-interface {p3, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 19
    :cond_0
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 21
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 22
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;Lokio/Buffer;J)J
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 7
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 8
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadAll(Lokio/RealBufferedSource;Lokio/Sink;)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Sink;
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
    const-string v0, "sink"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    move-wide v2, v0

    .line 14
    .line 15
    :cond_0
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 16
    .line 17
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 18
    .line 19
    const-wide/16 v6, 0x2000

    .line 20
    .line 21
    .line 22
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    const-wide/16 v6, -0x1

    .line 26
    .line 27
    cmp-long v4, v4, v6

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    .line 35
    move-result-wide v4

    .line 36
    .line 37
    cmp-long v6, v4, v0

    .line 38
    .line 39
    if-lez v6, :cond_0

    .line 40
    add-long/2addr v2, v4

    .line 41
    .line 42
    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 52
    move-result-wide v4

    .line 53
    .line 54
    cmp-long v0, v4, v0

    .line 55
    .line 56
    if-lez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 62
    move-result-wide v0

    .line 63
    add-long/2addr v2, v0

    .line 64
    .line 65
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 73
    :cond_2
    return-wide v2
.end method

.method public static final commonReadByte(Lokio/RealBufferedSource;)B
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;)[B
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;J)[B
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;)Lokio/ByteString;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;J)Lokio/ByteString;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadDecimalLong(Lokio/RealBufferedSource;)J
    .locals 10
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    move-wide v4, v2

    .line 14
    .line 15
    :goto_0
    add-long v6, v4, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v6, v7}, Lokio/RealBufferedSource;->request(J)Z

    .line 19
    move-result v8

    .line 20
    .line 21
    if-eqz v8, :cond_4

    .line 22
    .line 23
    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 27
    move-result v8

    .line 28
    .line 29
    const/16 v9, 0x30

    .line 30
    int-to-byte v9, v9

    .line 31
    .line 32
    if-lt v8, v9, :cond_0

    .line 33
    .line 34
    const/16 v9, 0x39

    .line 35
    int-to-byte v9, v9

    .line 36
    .line 37
    if-le v8, v9, :cond_1

    .line 38
    .line 39
    :cond_0
    cmp-long v4, v4, v2

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x2d

    .line 44
    int-to-byte v5, v5

    .line 45
    .line 46
    if-eq v8, v5, :cond_1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-wide v4, v6

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v1, "Expected a digit or \'-\' but was 0x"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const/16 v1, 0x10

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    .line 70
    move-result v1

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-string v2, "toString(this, checkRadix(radix))"

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 95
    .line 96
    :cond_4
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    .line 100
    move-result-wide v0

    .line 101
    return-wide v0
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;Lokio/Buffer;J)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception p2

    .line 13
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 14
    invoke-virtual {p1, p0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 15
    throw p2
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;[B)V
    .locals 6
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 6
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_1
    throw v0
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/RealBufferedSource;)J
    .locals 5
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 14
    int-to-long v2, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 23
    int-to-long v3, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 27
    move-result v2

    .line 28
    .line 29
    const/16 v3, 0x30

    .line 30
    int-to-byte v3, v3

    .line 31
    .line 32
    if-lt v2, v3, :cond_0

    .line 33
    .line 34
    const/16 v3, 0x39

    .line 35
    int-to-byte v3, v3

    .line 36
    .line 37
    if-le v2, v3, :cond_2

    .line 38
    .line 39
    :cond_0
    const/16 v3, 0x61

    .line 40
    int-to-byte v3, v3

    .line 41
    .line 42
    if-lt v2, v3, :cond_1

    .line 43
    .line 44
    const/16 v3, 0x66

    .line 45
    int-to-byte v3, v3

    .line 46
    .line 47
    if-le v2, v3, :cond_2

    .line 48
    .line 49
    :cond_1
    const/16 v3, 0x41

    .line 50
    int-to-byte v3, v3

    .line 51
    .line 52
    if-lt v2, v3, :cond_3

    .line 53
    .line 54
    const/16 v3, 0x46

    .line 55
    int-to-byte v3, v3

    .line 56
    .line 57
    if-le v2, v3, :cond_2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const/16 v1, 0x10

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "toString(this, checkRadix(radix))"

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    .line 107
    :cond_5
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    .line 111
    move-result-wide v0

    .line 112
    return-wide v0
.end method

.method public static final commonReadInt(Lokio/RealBufferedSource;)I
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadIntLe(Lokio/RealBufferedSource;)I
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readIntLe()I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadLong(Lokio/RealBufferedSource;)J
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static final commonReadLongLe(Lokio/RealBufferedSource;)J
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readLongLe()J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static final commonReadShort(Lokio/RealBufferedSource;)S
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadShortLe(Lokio/RealBufferedSource;)S
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readShortLe()S

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8CodePoint(Lokio/RealBufferedSource;)I
    .locals 3
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 11
    .line 12
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    .line 18
    move-result v0

    .line 19
    .line 20
    and-int/lit16 v1, v0, 0xe0

    .line 21
    .line 22
    const/16 v2, 0xc0

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    const-wide/16 v0, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    .line 33
    .line 34
    const/16 v2, 0xe0

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    const-wide/16 v0, 0x3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    and-int/lit16 v0, v0, 0xf8

    .line 45
    .line 46
    const/16 v1, 0xf0

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    const-wide/16 v0, 0x4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8CodePoint()I

    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public static final commonReadUtf8Line(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v0, 0xa

    .line 8
    int-to-byte v0, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->indexOf(B)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    :goto_0
    return-object p0
.end method

.method public static final commonReadUtf8LineStrict(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 13
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    const-wide/16 v3, 0x1

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    move-wide v5, v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    add-long v5, p1, v3

    .line 27
    .line 28
    :goto_0
    const/16 v2, 0xa

    .line 29
    int-to-byte v2, v2

    .line 30
    .line 31
    const-wide/16 v9, 0x0

    .line 32
    move-object v7, p0

    .line 33
    move v8, v2

    .line 34
    move-wide v11, v5

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v7 .. v12}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    .line 38
    move-result-wide v7

    .line 39
    .line 40
    const-wide/16 v9, -0x1

    .line 41
    .line 42
    cmp-long v9, v7, v9

    .line 43
    .line 44
    if-eqz v9, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v7, v8}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    .line 53
    :cond_1
    cmp-long v0, v5, v0

    .line 54
    .line 55
    if-gez v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 64
    .line 65
    sub-long v7, v5, v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->getByte(J)B

    .line 69
    move-result v0

    .line 70
    .line 71
    const/16 v1, 0xd

    .line 72
    int-to-byte v1, v1

    .line 73
    .line 74
    if-ne v0, v1, :cond_2

    .line 75
    add-long/2addr v3, v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3, v4}, Lokio/RealBufferedSource;->request(J)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    .line 87
    move-result v0

    .line 88
    .line 89
    if-ne v0, v2, :cond_2

    .line 90
    .line 91
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v5, v6}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    .line 98
    :cond_2
    new-instance v6, Lokio/Buffer;

    .line 99
    .line 100
    .line 101
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 102
    .line 103
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 104
    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 109
    move-result-wide v4

    .line 110
    .line 111
    const/16 v1, 0x20

    .line 112
    int-to-long v7, v1

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 116
    move-result-wide v4

    .line 117
    move-object v1, v6

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 121
    .line 122
    new-instance v0, Ljava/io/EOFException;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    const-string v2, "\\n not found: limit="

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 138
    move-result-wide v2

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 142
    move-result-wide p0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p0, " content="

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 154
    move-result-object p0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const/16 p0, 0x2026

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v0

    .line 175
    .line 176
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    const-string v0, "limit < 0: "

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    .line 193
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    move-result-object p0

    .line 198
    .line 199
    .line 200
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    throw p1
.end method

.method public static final commonRequest(Lokio/RealBufferedSource;J)Z
    .locals 6
    .param p0    # Lokio/RealBufferedSource;
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
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    cmp-long v0, v2, p1

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 30
    .line 31
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    .line 33
    const-wide/16 v3, 0x2000

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    const-wide/16 v4, -0x1

    .line 40
    .line 41
    cmp-long v0, v2, v4

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_1
    return v1

    .line 47
    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "closed"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    .line 60
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v0, "byteCount < 0: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p1
.end method

.method public static final commonRequire(Lokio/RealBufferedSource;J)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
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
    .line 8
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 18
    throw p0
.end method

.method public static final commonSelect(Lokio/RealBufferedSource;Lokio/Options;)I
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Options;
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
    const-string v0, "options"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lokio/internal/_BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    .line 22
    move-result v0

    .line 23
    const/4 v2, -0x2

    .line 24
    const/4 v3, -0x1

    .line 25
    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    .line 28
    if-eq v0, v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    aget-object p1, p1, v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 38
    move-result p1

    .line 39
    .line 40
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 41
    int-to-long v1, p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 45
    return v0

    .line 46
    :cond_1
    return v3

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 49
    .line 50
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 51
    .line 52
    const-wide/16 v4, 0x2000

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 56
    move-result-wide v4

    .line 57
    .line 58
    const-wide/16 v6, -0x1

    .line 59
    .line 60
    cmp-long v0, v4, v6

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    return v3

    .line 64
    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p1, "closed"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
.end method

.method public static final commonSkip(Lokio/RealBufferedSource;J)V
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
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
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :goto_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p1, v0

    .line 16
    .line 17
    if-lez v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    cmp-long v0, v2, v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 30
    .line 31
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    .line 33
    const-wide/16 v2, 0x2000

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    const-wide/16 v2, -0x1

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 50
    throw p0

    .line 51
    .line 52
    :cond_1
    :goto_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 60
    move-result-wide v0

    .line 61
    .line 62
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 66
    sub-long/2addr p1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void

    .line 69
    .line 70
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p1, "closed"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
.end method

.method public static final commonTimeout(Lokio/RealBufferedSource;)Lokio/Timeout;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
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
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final commonToString(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "buffer("

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 p0, 0x29

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
