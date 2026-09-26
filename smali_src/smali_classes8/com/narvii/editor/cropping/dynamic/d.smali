.class public final synthetic Lcom/narvii/editor/cropping/dynamic/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/editor/cropping/dynamic/RenderThread;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/d;->a:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/d;->a:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->b(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    return-void
.end method
