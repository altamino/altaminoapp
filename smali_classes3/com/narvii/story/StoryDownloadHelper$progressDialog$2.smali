.class final Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/view/ProgressRingDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryDownloadHelper.kt\ncom/narvii/story/StoryDownloadHelper$progressDialog$2\n*L\n1#1,296:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3

    .line 57
    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v1}, Lcom/narvii/story/StoryDownloadHelper;->access$getCtx$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03b3

    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptTitle(I)V

    const-string v1, ""

    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptText(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    new-instance v1, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/narvii/story/StoryDownloadHelper$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    return-object v0
.end method
