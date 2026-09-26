.class public final synthetic Lcom/narvii/util/fileloader/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/fileloader/FileLoader$Session;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/g;->a:Lcom/narvii/util/fileloader/FileLoader$Session;

    iput-wide p2, p0, Lcom/narvii/util/fileloader/g;->b:J

    iput-object p4, p0, Lcom/narvii/util/fileloader/g;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/g;->a:Lcom/narvii/util/fileloader/FileLoader$Session;

    iget-wide v1, p0, Lcom/narvii/util/fileloader/g;->b:J

    iget-object v3, p0, Lcom/narvii/util/fileloader/g;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/fileloader/FileLoader$Session;->a(Lcom/narvii/util/fileloader/FileLoader$Session;JLjava/lang/Exception;)V

    return-void
.end method
