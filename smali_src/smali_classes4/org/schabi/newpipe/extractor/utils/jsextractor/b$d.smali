.class Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 9
    return-void
.end method


# virtual methods
.method a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method b(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 7
    .line 8
    aget-object v2, v1, v0

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    move-object p1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method d()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method e()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method f(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method
