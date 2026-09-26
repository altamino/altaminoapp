.class final Lcoil/util/o;
.super Lcoil/util/m;
.source "SourceFile"


# instance fields
.field private final allowHardware:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcoil/util/m;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput-boolean p1, p0, Lcoil/util/o;->allowHardware:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a(Lcoil/size/i;)Z
    .locals 0
    .param p1    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcoil/util/o;->allowHardware:Z

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/util/o;->allowHardware:Z

    return v0
.end method
