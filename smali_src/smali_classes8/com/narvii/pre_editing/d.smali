.class public final synthetic Lcom/narvii/pre_editing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/d;->a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iput-object p2, p0, Lcom/narvii/pre_editing/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/d;->a:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iget-object v1, p0, Lcom/narvii/pre_editing/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->a(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V

    return-void
.end method
