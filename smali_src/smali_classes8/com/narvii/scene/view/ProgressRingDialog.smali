.class public final Lcom/narvii/scene/view/ProgressRingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/ProgressRingDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/view/ProgressRingDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ProgressRingDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/view/ProgressRingDialog;->Companion:Lcom/narvii/scene/view/ProgressRingDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/narvii/mediaeditor/R$style;->CustomDialog:I

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/ProgressRingDialog;->setBackgroundAlpha(F)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->root:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    return-void
.end method

.method public final setBackgroundAlpha(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->root:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    return-void
.end method

.method public final setPromptText(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 2
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->promptText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPromptText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 1
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->promptText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPromptTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 2
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->promptTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPromptTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 1
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->promptTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->root:Landroid/widget/LinearLayout;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "error : "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "ProgressRingDialog"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void
.end method

.method public final success()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->progressText:Landroid/widget/TextView;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->successIcon:Lcom/narvii/widget/TintButton;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    return-void
.end method

.method public final updateProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 p1, 0x25

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/view/ProgressRingDialog;->binding:Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/DialogRingProgressLayoutBinding;->progressText:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
