.class public final Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 2
    .param p1    # Lcom/facebook/rebound/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "spring"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 9
    move-result-wide v0

    .line 10
    double-to-float p1, v0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->access$setBorderRect(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;F)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method
