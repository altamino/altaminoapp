.class public final synthetic Lma/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lma/h0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lma/h0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/k;->a:Lma/h0;

    iput-boolean p2, p0, Lma/k;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/k;->a:Lma/h0;

    iget-boolean v1, p0, Lma/k;->b:Z

    check-cast p1, Lma/a;

    invoke-static {v0, v1, p1}, Lma/h0;->f0(Lma/h0;ZLma/a;)Loa/s;

    move-result-object p1

    return-object p1
.end method
