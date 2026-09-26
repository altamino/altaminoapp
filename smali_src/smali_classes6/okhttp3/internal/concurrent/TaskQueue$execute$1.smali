.class public final Lokhttp3/internal/concurrent/TaskQueue$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskQueue;->execute(Ljava/lang/String;JZLe8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n*L\n1#1,218:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $block:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cancelable:Z

.field final synthetic $name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLe8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$name:Ljava/lang/String;

    .line 3
    .line 4
    iput-boolean p2, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$cancelable:Z

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Le8/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    return-wide v0
.end method
