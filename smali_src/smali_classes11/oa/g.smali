.class public abstract Loa/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_ID_UNKNOWN:I = -0x1

.field public static final ID_UNKNOWN:Ljava/lang/String; = " "

.field public static final ITAG_NOT_AVAILABLE_OR_NOT_APPLICABLE:I = -0x1


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Loa/d;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;

.field private final mediaFormat:Lx9/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLx9/m;Loa/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Loa/g;->id:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Loa/g;->content:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p3, p0, Loa/g;->isUrl:Z

    .line 10
    .line 11
    iput-object p4, p0, Loa/g;->mediaFormat:Lx9/m;

    .line 12
    .line 13
    iput-object p5, p0, Loa/g;->deliveryMethod:Loa/d;

    .line 14
    .line 15
    iput-object p6, p0, Loa/g;->manifestUrl:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Loa/g;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loa/g;",
            "Ljava/util/List<",
            "+",
            "Loa/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lqa/y;->n(Ljava/util/Collection;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Loa/g;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Loa/g;->b(Loa/g;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    return v1
.end method


# virtual methods
.method public b(Loa/g;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Loa/g;->mediaFormat:Lx9/m;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p1, Loa/g;->mediaFormat:Lx9/m;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v1, v1, Lx9/m;->id:I

    .line 15
    .line 16
    iget v2, v2, Lx9/m;->id:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Loa/g;->deliveryMethod:Loa/d;

    .line 21
    .line 22
    iget-object v2, p1, Loa/g;->deliveryMethod:Loa/d;

    .line 23
    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget-boolean v1, p0, Loa/g;->isUrl:Z

    .line 27
    .line 28
    iget-boolean p1, p1, Loa/g;->isUrl:Z

    .line 29
    .line 30
    if-ne v1, p1, :cond_1

    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Loa/g;->content:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lx9/m;
    .locals 1

    .line 1
    iget-object v0, p0, Loa/g;->mediaFormat:Lx9/m;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Loa/g;->mediaFormat:Lx9/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lx9/m;->id:I

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    return v0
.end method
