.class public final synthetic Lcom/narvii/pip/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pip/b;->a:Lcom/narvii/pip/PipEditorFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pip/b;->a:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/pip/PipEditorFragment;->F(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V

    return-void
.end method
