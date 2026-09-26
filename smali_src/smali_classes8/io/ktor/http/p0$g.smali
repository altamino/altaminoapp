.class final Lio/ktor/http/p0$g;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/p0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/util/List;Lio/ktor/http/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/http/p0;


# direct methods
.method constructor <init>(Lio/ktor/http/p0;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/http/p0$g;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    .line 2
    invoke-virtual {v0}, Lio/ktor/http/p0;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    .line 3
    invoke-virtual {v0}, Lio/ktor/http/p0;->n()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    .line 4
    invoke-virtual {v0}, Lio/ktor/http/p0;->k()Lio/ktor/http/l0;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/l0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    .line 5
    invoke-static {v1}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->e0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lio/ktor/http/p0$g;->this$0:Lio/ktor/http/p0;

    .line 6
    invoke-static {v2}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        0x3as
        0x40s
    .end array-data
.end method
