.class public final Landroidx/core/view/MenuKt$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/MenuKt;->a(Landroid/view/Menu;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/MenuItem;",
        ">;",
        "Lf8/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/core/view/MenuKt$iterator$1\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n83#2:91\n1#3:92\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/core/view/MenuKt$iterator$1\n*L\n74#1:91\n74#1:92\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_iterator:Landroid/view/Menu;

.field private index:I


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuItem;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    .line 3
    .line 4
    iget v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 21
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/MenuKt$iterator$1;->a()Landroid/view/MenuItem;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    .line 3
    .line 4
    iget v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    iput v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v2, "getItem(index)"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 27
    .line 28
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 39
    throw v0
.end method
