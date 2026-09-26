.class public final synthetic Lcom/narvii/video/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/k0;

.field public final synthetic b:Lcom/narvii/video/BaseMediaEditorFragment;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/k;->a:Lkotlin/jvm/internal/k0;

    iput-object p2, p0, Lcom/narvii/video/k;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-boolean p3, p0, Lcom/narvii/video/k;->c:Z

    iput-object p4, p0, Lcom/narvii/video/k;->d:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/video/k;->a:Lkotlin/jvm/internal/k0;

    iget-object v1, p0, Lcom/narvii/video/k;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    iget-boolean v2, p0, Lcom/narvii/video/k;->c:Z

    iget-object v3, p0, Lcom/narvii/video/k;->d:Lcom/narvii/util/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->t(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V

    return-void
.end method
