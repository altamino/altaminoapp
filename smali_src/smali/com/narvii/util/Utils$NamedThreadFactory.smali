.class Lcom/narvii/util/Utils$NamedThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final priority:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->priority:I

    .line 8
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->name:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->priority:I

    .line 10
    const/4 v1, 0x5

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 16
    :cond_0
    return-object v0
.end method
