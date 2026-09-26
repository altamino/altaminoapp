.class public final synthetic Lcom/narvii/pip/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/pip/PipEditorFragment;

.field public final synthetic b:Lcom/narvii/pip/PipInfoPack;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pip/e;->a:Lcom/narvii/pip/PipEditorFragment;

    iput-object p2, p0, Lcom/narvii/pip/e;->b:Lcom/narvii/pip/PipInfoPack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/pip/e;->a:Lcom/narvii/pip/PipEditorFragment;

    iget-object v1, p0, Lcom/narvii/pip/e;->b:Lcom/narvii/pip/PipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->I(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method
