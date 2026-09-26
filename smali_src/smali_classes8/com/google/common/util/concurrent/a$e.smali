.class final Lcom/google/common/util/concurrent/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final TOMBSTONE:Lcom/google/common/util/concurrent/a$e;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field next:Lcom/google/common/util/concurrent/a$e;

.field final task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/a$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/util/concurrent/a$e;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/common/util/concurrent/a$e;->TOMBSTONE:Lcom/google/common/util/concurrent/a$e;

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/a$e;->task:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/a$e;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/a$e;->task:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/common/util/concurrent/a$e;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
