.class final Lkotlin/collections/c$d;
.super Lkotlin/collections/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/c<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private _size:I

.field private final fromIndex:I

.field private final list:Lkotlin/collections/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/c<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/c;II)V
    .locals 1
    .param p1    # Lkotlin/collections/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/c<",
            "+TE;>;II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlin/collections/c$d;->list:Lkotlin/collections/c;

    .line 11
    .line 12
    iput p2, p0, Lkotlin/collections/c$d;->fromIndex:I

    .line 13
    .line 14
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/collections/a;->size()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2, p3, p1}, Lkotlin/collections/c$a;->d(III)V

    .line 22
    sub-int/2addr p3, p2

    .line 23
    .line 24
    iput p3, p0, Lkotlin/collections/c$d;->_size:I

    .line 25
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 3
    .line 4
    iget v1, p0, Lkotlin/collections/c$d;->_size:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->b(II)V

    .line 8
    .line 9
    iget-object v0, p0, Lkotlin/collections/c$d;->list:Lkotlin/collections/c;

    .line 10
    .line 11
    iget v1, p0, Lkotlin/collections/c$d;->fromIndex:I

    .line 12
    add-int/2addr v1, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lkotlin/collections/c;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lkotlin/collections/c$d;->_size:I

    return v0
.end method
