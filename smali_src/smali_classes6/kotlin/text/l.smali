.class Lkotlin/text/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Appendable;Ljava/lang/Object;Le8/l;)V
    .locals 1
    .param p0    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Le8/l<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
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
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 52
    :goto_1
    return-void
.end method
