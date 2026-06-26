.class Lcom/narvii/app/TraceUtil$1$1;
.super Ljava/lang/Thread;
.source "TraceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/TraceUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/TraceUtil$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/app/TraceUtil$1;Ljava/util/List;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/app/TraceUtil$1$1;->this$0:Lcom/narvii/app/TraceUtil$1;

    iput-object p2, p0, Lcom/narvii/app/TraceUtil$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/narvii/app/TraceUtil$1$1;->val$list:Ljava/util/List;

    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/trace_ccl.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method
