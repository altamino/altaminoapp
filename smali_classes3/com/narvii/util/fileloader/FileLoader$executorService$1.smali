.class final Lcom/narvii/util/fileloader/FileLoader$executorService$1;
.super Ljava/lang/Object;
.source "FileLoader.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/fileloader/FileLoader$executorService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$executorService$1;

    invoke-direct {v0}, Lcom/narvii/util/fileloader/FileLoader$executorService$1;-><init>()V

    sput-object v0, Lcom/narvii/util/fileloader/FileLoader$executorService$1;->INSTANCE:Lcom/narvii/util/fileloader/FileLoader$executorService$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "File Loader Thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
