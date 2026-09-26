.class final Lio/ktor/http/p0$d;
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

    iput-object p1, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/http/p0$d;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    .line 2
    invoke-virtual {v0}, Lio/ktor/http/p0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    .line 3
    invoke-static {v0}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    iget-object v0, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    invoke-virtual {v0}, Lio/ktor/http/p0;->k()Lio/ktor/http/l0;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/l0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    .line 4
    invoke-static {v1}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    new-array v9, v1, [C

    fill-array-data v9, :array_0

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move v10, v0

    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->e0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    .line 5
    invoke-static {v1}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v2, p0, Lio/ktor/http/p0$d;->this$0:Lio/ktor/http/p0;

    .line 6
    invoke-static {v2}, Lio/ktor/http/p0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 2
        0x3fs
        0x23s
    .end array-data
.end method
