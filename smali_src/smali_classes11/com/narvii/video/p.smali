.class public final synthetic Lcom/narvii/video/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseMediaEditorFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/p;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    iput p2, p0, Lcom/narvii/video/p;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/p;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    iget v1, p0, Lcom/narvii/video/p;->b:I

    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->u(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    return-void
.end method
