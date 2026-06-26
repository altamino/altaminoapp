.class Lcom/narvii/util/Utils$NamedThreadFactory;
.super Ljava/lang/Object;
.source "Utils.java"

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

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1203
    iput-object p1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->name:Ljava/lang/String;

    .line 1204
    iput p2, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->priority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1209
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1210
    iget p1, p0, Lcom/narvii/util/Utils$NamedThreadFactory;->priority:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 1211
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    return-object v0
.end method
