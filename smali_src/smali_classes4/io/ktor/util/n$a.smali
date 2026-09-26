.class public final Lio/ktor/util/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/n;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTo;>;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field private final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TFrom;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lio/ktor/util/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/n<",
            "TFrom;TTo;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/util/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/n<",
            "TFrom;TTo;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/ktor/util/n$a;->this$0:Lio/ktor/util/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lio/ktor/util/n;->b(Lio/ktor/util/n;)Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/util/n$a;->delegateIterator:Ljava/util/Iterator;

    .line 16
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/n$a;->delegateIterator:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/n$a;->this$0:Lio/ktor/util/n;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/ktor/util/n;->a(Lio/ktor/util/n;)Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lio/ktor/util/n$a;->delegateIterator:Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/n$a;->delegateIterator:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    return-void
.end method
