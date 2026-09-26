.class public final synthetic Lma/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lx9/o;


# direct methods
.method public synthetic constructor <init>(Lx9/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/v;->a:Lx9/o;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lma/v;->a:Lx9/o;

    check-cast p1, Lx9/f;

    invoke-virtual {v0, p1}, Lx9/h;->d(Lx9/f;)V

    return-void
.end method
