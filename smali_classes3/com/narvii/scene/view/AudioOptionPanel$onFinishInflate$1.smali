.class final Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;
.super Ljava/lang/Object;
.source "AudioOptionPanel.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/AudioOptionPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/AudioOptionPanel;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/AudioOptionPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;->this$0:Lcom/narvii/scene/view/AudioOptionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;->this$0:Lcom/narvii/scene/view/AudioOptionPanel;

    invoke-static {p1}, Lcom/narvii/scene/view/AudioOptionPanel;->access$getOnOptionClickListener$p(Lcom/narvii/scene/view/AudioOptionPanel;)Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;->this$0:Lcom/narvii/scene/view/AudioOptionPanel;

    sget v1, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "option_done"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionSubmit(Landroid/view/View;)V

    :cond_0
    return-void
.end method
