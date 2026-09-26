.class public abstract Lorg/threeten/bp/zone/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/f$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static f(Lorg/threeten/bp/s;)Lorg/threeten/bp/zone/f;
    .locals 1

    .line 1
    .line 2
    const-string v0, "offset"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lorg/threeten/bp/zone/f$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/f$a;-><init>(Lorg/threeten/bp/s;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public abstract a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;
.end method

.method public abstract b(Lorg/threeten/bp/h;)Lorg/threeten/bp/zone/d;
.end method

.method public abstract c(Lorg/threeten/bp/h;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/h;",
            ")",
            "Ljava/util/List<",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Z
.end method
