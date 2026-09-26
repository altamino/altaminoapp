.class public abstract Lorg/threeten/bp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/a$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static c(Lorg/threeten/bp/r;)Lorg/threeten/bp/a;
    .locals 1

    .line 1
    .line 2
    const-string v0, "zone"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lorg/threeten/bp/a$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/threeten/bp/a$a;-><init>(Lorg/threeten/bp/r;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public abstract a()Lorg/threeten/bp/r;
.end method

.method public abstract b()Lorg/threeten/bp/f;
.end method
