.class public final synthetic Lcom/narvii/video/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseViceTimeLineFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/x;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput-boolean p2, p0, Lcom/narvii/video/x;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/x;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget-boolean v1, p0, Lcom/narvii/video/x;->b:Z

    invoke-static {v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->A(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V

    return-void
.end method
