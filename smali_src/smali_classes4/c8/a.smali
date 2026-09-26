.class public Lc8/a;
.super Lb8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lb8/a;-><init>()V

    .line 4
    return-void
.end method

.method private final c(I)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lc8/a$a;->sdkVersion:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method


# virtual methods
.method public b()Lh8/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lc8/a;->c(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Li8/a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Li8/a;-><init>()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, La8/a;->b()Lh8/d;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method
