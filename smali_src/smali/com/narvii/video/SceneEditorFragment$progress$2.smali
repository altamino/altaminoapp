.class final Lcom/narvii/video/SceneEditorFragment$progress$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment$progress$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1199:1\n1#2:1200\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/SceneEditorFragment$progress$2;->invoke$lambda$1(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/video/SceneEditorFragment;->access$getPreviewVideoGeneratingTask$p(Lcom/narvii/video/SceneEditorFragment;)Lg7/d;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 3
    new-instance v2, Lcom/narvii/video/u0;

    invoke-direct {v2, v1}, Lcom/narvii/video/u0;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment$progress$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
