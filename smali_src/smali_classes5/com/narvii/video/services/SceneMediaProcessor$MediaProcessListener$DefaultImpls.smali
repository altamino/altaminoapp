.class public final Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onFailed(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
    .locals 0
    .param p0    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static synthetic onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    and-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: onFailed"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static onProgress(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;F)V
    .locals 0
    .param p0    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onSuccess(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "outputList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
