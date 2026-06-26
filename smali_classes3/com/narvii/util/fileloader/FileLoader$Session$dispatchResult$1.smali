.class final Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;
.super Ljava/lang/Object;
.source "FileLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader$Session;->dispatchResult(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic $fileSize:J

.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    iput-wide p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->$fileSize:J

    iput-object p4, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    iget-wide v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->$fileSize:J

    iget-object v3, p0, Lcom/narvii/util/fileloader/FileLoader$Session$dispatchResult$1;->$e:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$innerDispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V

    return-void
.end method
