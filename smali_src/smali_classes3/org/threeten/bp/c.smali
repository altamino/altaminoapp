.class public final Lorg/threeten/bp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/threeten/bp/f;)Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/f;->B()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw v0
.end method
