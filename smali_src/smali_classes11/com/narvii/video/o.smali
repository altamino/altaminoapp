.class public final synthetic Lcom/narvii/video/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/video/o;->a:Z

    iput-object p2, p0, Lcom/narvii/video/o;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/narvii/video/o;->a:Z

    iget-object v1, p0, Lcom/narvii/video/o;->b:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, v1, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->r(ZLcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V

    return-void
.end method
