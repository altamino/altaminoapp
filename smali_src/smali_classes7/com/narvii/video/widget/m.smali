.class public final synthetic Lcom/narvii/video/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/HorizontalRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/m;->a:Lcom/narvii/widget/HorizontalRecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/m;->a:Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->b(Lcom/narvii/widget/HorizontalRecyclerView;)V

    return-void
.end method
