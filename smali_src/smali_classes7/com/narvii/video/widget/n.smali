.class public final synthetic Lcom/narvii/video/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/n;->a:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/n;->a:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->d(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method
