.class public final Lcom/narvii/scene/dialog/SceneAttachDataDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutNewQuiz:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$style;->CustomDialog:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    sget p1, Lcom/narvii/mediaeditor/R$layout;->dialog_add_attach_data:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_new_poll:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "findViewById(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewPoll:Landroid/view/View;

    .line 29
    .line 30
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_new_quiz:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->layoutNewQuiz:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_delete:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final getOnItemClickListener()Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_new_poll:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-ne v2, v1, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;->onNewPoll(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 34
    goto :goto_3

    .line 35
    .line 36
    :cond_3
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_new_quiz:I

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v2

    .line 44
    .line 45
    if-ne v2, v1, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;->onNewQuiz(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    goto :goto_3

    .line 57
    .line 58
    :cond_6
    :goto_2
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_delete:I

    .line 59
    .line 60
    if-nez v0, :cond_7

    .line 61
    goto :goto_3

    .line 62
    .line 63
    .line 64
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v0

    .line 66
    .line 67
    if-ne v0, p1, :cond_8

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    :cond_8
    :goto_3
    return-void
.end method

.method public final setOnItemClickListener(Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->onItemClickListener:Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;

    return-void
.end method
