.class public final Landroidx/work/impl/model/WorkSpecKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 2
    .param p0    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->f()I

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, p0}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    .line 17
    return-object v0
.end method
