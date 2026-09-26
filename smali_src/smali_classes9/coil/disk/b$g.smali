.class final Lcoil/disk/b$g;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/disk/b;->g0()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/io/IOException;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/disk/b;


# direct methods
.method constructor <init>(Lcoil/disk/b;)V
    .locals 0

    iput-object p1, p0, Lcoil/disk/b$g;->this$0:Lcoil/disk/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lcoil/disk/b$g;->invoke(Ljava/io/IOException;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/io/IOException;)V
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcoil/disk/b$g;->this$0:Lcoil/disk/b;

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcoil/disk/b;->j(Lcoil/disk/b;Z)V

    return-void
.end method
