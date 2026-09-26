.class public final Lffmpeg/executable/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffmpeg/executable/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lg7/c;

.field final synthetic $config:Lg7/d;

.field final synthetic this$0:Lffmpeg/executable/a;


# direct methods
.method constructor <init>(Lg7/c;Lffmpeg/executable/a;Lg7/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 3
    .line 4
    iput-object p2, p0, Lffmpeg/executable/a$c;->this$0:Lffmpeg/executable/a;

    .line 5
    .line 6
    iput-object p3, p0, Lffmpeg/executable/a$c;->$config:Lg7/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$c;->this$0:Lffmpeg/executable/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lffmpeg/executable/a;->b(Lffmpeg/executable/a;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lffmpeg/executable/a$c;->$config:Lg7/d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lg7/c;->onCancel()V

    .line 19
    :cond_0
    return-void
.end method

.method public onFail()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$c;->this$0:Lffmpeg/executable/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lffmpeg/executable/a;->b(Lffmpeg/executable/a;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lffmpeg/executable/a$c;->$config:Lg7/d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lg7/b;->onFail()V

    .line 19
    :cond_0
    return-void
.end method

.method public onProgress(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lg7/c;->onProgress(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lg7/b;->onStart()V

    .line 8
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$c;->this$0:Lffmpeg/executable/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lffmpeg/executable/a;->b(Lffmpeg/executable/a;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lffmpeg/executable/a$c;->$config:Lg7/d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lffmpeg/executable/a$c;->$callback:Lg7/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lg7/b;->onSuccess()V

    .line 19
    :cond_0
    return-void
.end method
