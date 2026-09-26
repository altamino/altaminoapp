.class public final synthetic Lda/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lba/e;


# direct methods
.method public synthetic constructor <init>(Lba/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda/p;->a:Lba/e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/p;->a:Lba/e;

    check-cast p1, Lda/k;

    invoke-virtual {v0, p1}, Lx9/h;->d(Lx9/f;)V

    return-void
.end method
