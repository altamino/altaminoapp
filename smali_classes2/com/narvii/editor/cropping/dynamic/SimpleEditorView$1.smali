.class public final Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SimpleEditorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    const-string v0, "spring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 78
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    invoke-static {v0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->access$setBorderRect(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;F)V

    .line 79
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$1;->this$0:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
