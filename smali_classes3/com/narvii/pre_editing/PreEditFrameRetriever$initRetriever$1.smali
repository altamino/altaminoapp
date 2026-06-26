.class final Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;
.super Ljava/lang/Object;
.source "PreEditFrameRetriever.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/PreEditFrameRetriever;->initRetriever(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $outputFolderPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iput-object p2, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;->$outputFolderPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-static {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->access$getReaderList$p(Lcom/narvii/pre_editing/PreEditFrameRetriever;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    iget-object v2, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$initRetriever$1;->$outputFolderPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/narvii/pre_editing/frame/VideoFrameReader;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
