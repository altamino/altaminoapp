.class Lcom/ss/android/tea/common/applog/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/tea/common/applog/l;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/tea/common/applog/l;


# direct methods
.method constructor <init>(Lcom/ss/android/tea/common/applog/l;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->c(Lcom/ss/android/tea/common/applog/l;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->g(Lcom/ss/android/tea/common/applog/l;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->i(Lcom/ss/android/tea/common/applog/l;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/ss/android/tea/common/applog/l;->o()V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l$a;->a:Lcom/ss/android/tea/common/applog/l;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->k(Lcom/ss/android/tea/common/applog/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    return-void
.end method
