.class public final Lcom/narvii/scene/dialog/SceneAttachDataDialog;
.super Landroid/app/Dialog;
.source "SceneAttachDataDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final layoutNewPoll:Landroid/view/View;

.field private final layoutNewQuiz:Landroid/view/View;

.field private onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    sget p1, Lcom/narvii/mediaeditor/R$layout;->dialog_add_attach_data:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_new_poll:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.layout_new_poll)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewPoll:Landroid/view/View;

    .line 17
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_new_quiz:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.layout_new_quiz)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewQuiz:Landroid/view/View;

    .line 19
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewPoll:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewQuiz:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_delete:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getOnItemClickListener()Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_new_poll:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 27
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;->onNewPoll(Landroid/view/View;)V

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 30
    :cond_3
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_new_quiz:I

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 31
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;->onNewQuiz(Landroid/view/View;)V

    .line 32
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 34
    :cond_6
    :goto_2
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_delete:I

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final setOnItemClickListener(Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    return-void
.end method
