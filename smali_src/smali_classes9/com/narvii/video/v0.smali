.class public final synthetic Lcom/narvii/video/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/ScrollingTimeLineFragment;

.field public final synthetic b:Lkotlin/jvm/internal/n0;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/v0;->a:Lcom/narvii/video/ScrollingTimeLineFragment;

    iput-object p2, p0, Lcom/narvii/video/v0;->b:Lkotlin/jvm/internal/n0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/v0;->a:Lcom/narvii/video/ScrollingTimeLineFragment;

    iget-object v1, p0, Lcom/narvii/video/v0;->b:Lkotlin/jvm/internal/n0;

    invoke-static {v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->y(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V

    return-void
.end method
