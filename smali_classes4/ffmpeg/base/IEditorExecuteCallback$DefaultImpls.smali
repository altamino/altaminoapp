.class public final Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "IEditorExecuteCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/base/IEditorExecuteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onCancel(Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 0

    return-void
.end method

.method public static onFail(Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 0

    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onFail(Lffmpeg/base/IEditorBaseCallback;)V

    return-void
.end method

.method public static onProgress(Lffmpeg/base/IEditorExecuteCallback;F)V
    .locals 0

    return-void
.end method

.method public static onStart(Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 0

    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onStart(Lffmpeg/base/IEditorBaseCallback;)V

    return-void
.end method

.method public static onSuccess(Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 0

    invoke-static {p0}, Lffmpeg/base/IEditorBaseCallback$DefaultImpls;->onSuccess(Lffmpeg/base/IEditorBaseCallback;)V

    return-void
.end method
