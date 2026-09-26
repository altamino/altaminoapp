.class public final synthetic Lcom/narvii/video/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseViceTimeLineFragment;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/z;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/z;->b:I

    iput-boolean p3, p0, Lcom/narvii/video/z;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/z;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v1, p0, Lcom/narvii/video/z;->b:I

    iget-boolean v2, p0, Lcom/narvii/video/z;->c:Z

    invoke-static {v0, v1, v2}, Lcom/narvii/video/BaseViceTimeLineFragment;->C(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V

    return-void
.end method
