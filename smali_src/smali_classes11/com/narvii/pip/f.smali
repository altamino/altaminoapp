.class public final synthetic Lcom/narvii/pip/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/video/model/AVClipInfoPack;

.field public final synthetic b:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pip/f;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/pip/f;->b:Lcom/narvii/pip/PipEditorFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/pip/f;->a:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, p0, Lcom/narvii/pip/f;->b:Lcom/narvii/pip/PipEditorFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/pip/PipEditorFragment;->E(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;Ljava/lang/Boolean;)V

    return-void
.end method
