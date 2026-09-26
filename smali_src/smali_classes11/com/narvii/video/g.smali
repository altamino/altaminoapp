.class public final synthetic Lcom/narvii/video/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/video/AudioEditorFragment;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/g;->a:Lcom/narvii/video/AudioEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/g;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/narvii/video/g;->c:I

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/g;->a:Lcom/narvii/video/AudioEditorFragment;

    iget-object v1, p0, Lcom/narvii/video/g;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/narvii/video/g;->c:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/video/AudioEditorFragment;->E(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    return-void
.end method
