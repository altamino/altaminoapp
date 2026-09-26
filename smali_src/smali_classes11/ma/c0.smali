.class public final synthetic Lma/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lma/h0;


# direct methods
.method public synthetic constructor <init>(Lma/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/c0;->a:Lma/h0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/c0;->a:Lma/h0;

    check-cast p1, Lma/a;

    invoke-static {v0, p1}, Lma/h0;->j0(Lma/h0;Lma/a;)Loa/a;

    move-result-object p1

    return-object p1
.end method
