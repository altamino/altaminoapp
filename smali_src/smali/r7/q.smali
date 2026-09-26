.class public final Lr7/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,576:1\n527#1,4:577\n488#1,4:581\n531#1:585\n532#1,4:587\n492#1,6:591\n537#1:597\n565#1,4:598\n507#1,6:602\n569#1:608\n570#1,4:610\n513#1,7:614\n575#1:621\n565#1,4:622\n507#1,6:626\n569#1:632\n570#1,4:634\n513#1,7:638\n575#1:645\n565#1,4:646\n507#1,6:650\n569#1:656\n570#1,4:658\n513#1,7:662\n575#1:669\n565#1,4:670\n507#1,6:674\n569#1:680\n570#1,4:682\n513#1,7:686\n575#1:693\n565#1,4:694\n507#1,6:698\n569#1:704\n570#1,4:706\n513#1,7:710\n575#1:717\n527#1,4:718\n488#1,4:722\n531#1:726\n532#1,4:728\n492#1,6:732\n537#1:738\n545#1,4:740\n488#1,4:744\n549#1:748\n550#1,5:750\n492#1,6:755\n556#1:761\n488#1,4:762\n492#1,6:767\n488#1,4:773\n492#1,6:778\n488#1,4:784\n492#1,6:789\n507#1,6:795\n513#1,7:802\n74#2:586\n74#2:609\n74#2:633\n74#2:657\n74#2:681\n74#2:705\n74#2:727\n69#2:739\n74#2:749\n74#2:766\n74#2:777\n74#2:788\n74#2:801\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n411#1:577,4\n411#1:581,4\n411#1:585\n411#1:587,4\n411#1:591,6\n411#1:597\n418#1:598,4\n418#1:602,6\n418#1:608\n418#1:610,4\n418#1:614,7\n418#1:621\n425#1:622,4\n425#1:626,6\n425#1:632\n425#1:634,4\n425#1:638,7\n425#1:645\n432#1:646,4\n432#1:650,6\n432#1:656\n432#1:658,4\n432#1:662,7\n432#1:669\n439#1:670,4\n439#1:674,6\n439#1:680\n439#1:682,4\n439#1:686,7\n439#1:693\n446#1:694,4\n446#1:698,6\n446#1:704\n446#1:706,4\n446#1:710,7\n446#1:717\n453#1:718,4\n453#1:722,4\n453#1:726\n453#1:728,4\n453#1:732,6\n453#1:738\n465#1:740,4\n465#1:744,4\n465#1:748\n465#1:750,5\n465#1:755,6\n465#1:761\n473#1:762,4\n473#1:767,6\n530#1:773,4\n530#1:778,6\n548#1:784,4\n548#1:789,6\n568#1:795,6\n568#1:802,7\n411#1:586\n418#1:609\n425#1:633\n432#1:657\n439#1:681\n446#1:705\n453#1:727\n452#1:739\n465#1:749\n474#1:766\n531#1:777\n549#1:788\n569#1:801\n*E\n"
.end annotation


# direct methods
.method public static final a(Lr7/p;Lr7/a;I)V
    .locals 4
    .param p0    # Lr7/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lr7/a;
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
    const-string/jumbo v0, "src"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lr7/a;->f()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1, v2}, Lr7/f;->c(Lr7/a;Lr7/a;I)V

    .line 33
    sub-int/2addr p2, v2

    .line 34
    .line 35
    if-lez p2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 39
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 50
    throw p1
.end method

.method public static final b(Lr7/p;[BII)V
    .locals 4
    .param p0    # Lr7/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
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
    const-string/jumbo v0, "src"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lr7/a;->f()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1, p2, v2}, Lr7/f;->d(Lr7/a;[BII)V

    .line 33
    add-int/2addr p2, v2

    .line 34
    sub-int/2addr p3, v2

    .line 35
    .line 36
    if-lez p3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1, v0}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 51
    throw p1
.end method

.method public static synthetic c(Lr7/p;Lr7/a;IILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 12
    move-result p3

    .line 13
    sub-int/2addr p2, p3

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lr7/q;->a(Lr7/p;Lr7/a;I)V

    .line 17
    return-void
.end method
