.class public final synthetic Lcom/narvii/pre_editing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/e;->a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iput-object p2, p0, Lcom/narvii/pre_editing/e;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/pre_editing/e;->c:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/e;->a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iget-object v1, p0, Lcom/narvii/pre_editing/e;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/pre_editing/e;->c:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    invoke-static {v0, v1, v2}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->c(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    return-void
.end method
